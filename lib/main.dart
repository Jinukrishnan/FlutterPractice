import 'package:flutter/material.dart';
import 'package:todo/pages/addtodo.dart';
import 'package:todo/pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/addtodo': (context) => AddTodo(),
    },
  ));
}
