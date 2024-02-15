import 'package:container/widget/singleChildLayout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'hai',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'single',
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   backgroundColor: Colors.red,
      // ),
      body: SingleChildLayout(),
    );
  }
}
