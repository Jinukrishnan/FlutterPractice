import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Map<dynamic, dynamic> products = {};
  List<dynamic> products = [];
  Future<void> getProducts() async {
    final res = await http.get(Uri.parse("https://dummyjson.com/products"));
    print(res.statusCode);
    setState(() {
      products = jsonDecode(res.body)['products'];
      // prod = jsonDecode(products['products']);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (products.length == 0) {
      getProducts();
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              'Flipkart',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                print(products[index]['id']);
                Navigator.pushNamed(context, '/detail',
                    arguments: products[index]['id']);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                    alignment: Alignment.center,
                    fit: StackFit.expand,
                    children: [
                      Image(
                        width: 200,
                        height: 100,
                        image: NetworkImage(products[index]['thumbnail']),
                      ),
                      // Text('${products[index]['title']}')
                      Positioned(
                        bottom: 0,
                        child: Text('${products[index]['title']}'),
                      ),
                    ]),
              ),
            );
          },
        ));
  }
}
