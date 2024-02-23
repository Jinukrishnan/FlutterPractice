import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Cart extends StatefulWidget {
  Cart({super.key});
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int count = 1;
  List<dynamic> key = [];
  List<dynamic> cart = [];
  String data = '';
  void getCart() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    key = prefs.getKeys().toList();
    key.forEach((element) {
      print(element);
      data = prefs.getString('$element')!;
      setState(() {
        // if (data != null) {
        cart.add(json.decode(data)!);
        // }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (cart.isEmpty) {
      getCart();
    }
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Cart')),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('${cart[index]['title']}'),
              leading:
                  Image(image: NetworkImage('${cart[index]['thumbnail']}')),
              trailing: IconButton(
                  onPressed: () async {
                    print(cart[index]['id']);
                    final SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    setState(() {
                      prefs.remove('${cart[index]['id']}');
                      count += 1;
                    });
                  },
                  icon: Icon(Icons.delete)),
            ),
          );
        },
      ),
    );
  }
}
