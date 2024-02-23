import 'package:ecommerce/Pages/Cart.dart';
import 'package:ecommerce/Pages/Home.dart';
import 'package:ecommerce/Pages/productDetail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/detail': (context) => ProductDetail(),
      '/cart': (context) => Cart(),
    },
  ));
}
