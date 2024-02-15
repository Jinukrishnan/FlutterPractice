import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SacfoldWidget(),
  ));
}

class SacfoldWidget extends StatelessWidget {
  const SacfoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text Widget',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      // body section
      body: Center(
          child: Text(
        'NOVAVI solutions',
        style: TextStyle(
            color: Colors.white,
            backgroundColor: Colors.red,
            fontSize: 30,
            fontWeight: FontWeight.w800,
            letterSpacing: 10,
            wordSpacing: 20,
            fontStyle: FontStyle.italic,
            fontFamily: 'Novavi'),
      )),

      backgroundColor: Colors.white,
    );
  }
}
