import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  String image = '';
  List<dynamic> cart = [];
  Map<dynamic, dynamic> Detail = {};
  Future<void> getProduct(id) async {
    final res =
        await http.get(Uri.parse('https://dummyjson.com/products/${id}'));
    print(res.statusCode);
    setState(() {
      Detail = jsonDecode(res.body);
      // prod = jsonDecode(products['products']);
    });
  }

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments;
    print(id.runtimeType);
    if (Detail.isEmpty) {
      getProduct(id);
    }
    if (image.isEmpty) {
      setState(() {
        image = Detail['thumbnail'];
      });
    }

    print('id isssssssss:$id');
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              'Product Detail',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    // color: const Color.fromRGBO(76, 175, 80, 1),
                    child: Image(
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      image: NetworkImage('$image', scale: 1),
                    )),
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all((0)),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  // color: Colors.red,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Detail['images'].length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  image = Detail['images'][index];
                                });
                              },
                              child: Image(
                                fit: BoxFit.cover,
                                image: NetworkImage(Detail['images'][index],
                                    scale: 1),
                              ),
                            ));
                      }),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.topLeft,
                  child: Text(
                    '${Detail['title']}',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.topLeft,
                  child: Text(
                    '  ₹ ${Detail['price'] * 78}  ',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: List<Widget>.generate(Detail['rating'].toInt(),
                          (index) {
                        print(index);
                        return Icon(Icons.star);
                      }),
                    )),
                Container(
                  child: TextButton.icon(
                    onPressed: () async {
                      final SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      await prefs.setString(
                          '${Detail['id']}', json.encode(Detail));
                      Navigator.pushNamed(context, '/cart');
                    },
                    icon: Icon(Icons.add_chart),
                    label: Text('Add to Cart'),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
