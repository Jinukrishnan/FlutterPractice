import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Refactor(),
  ));
}

class Refactor extends StatelessWidget {
  const Refactor({super.key});

  @override
  Widget build(BuildContext context) {
    Widget cricket = Icon(Icons.sports_cricket);
    Widget soccer = Icon(Icons.sports_soccer);
    Widget baseball = Icon(Icons.sports_baseball);
    Widget sportrow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        cricket,
        soccer,
        baseball,
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('novavi'),
      ),
      body: ListView(
        children: [sportrow, sportrow, sportrow],
      ),
    );
  }
}
