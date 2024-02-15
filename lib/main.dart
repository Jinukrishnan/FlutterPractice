import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Refactor(),
  ));
}

class Refactor extends StatelessWidget {
  const Refactor({super.key});

  Widget sportsButton({String? text, void Function()? buttonAction}) {
    return TextButton(
      onPressed: buttonAction,
      child: Text('$text'),
    );
  }

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
        children: [
          sportrow,
          sportrow,
          sportrow,
          sportsButton(
              text: 'clicke me 1',
              buttonAction: () {
                print('clicked me 1');
              }),
          sportsButton(
              text: 'clicke me 2',
              buttonAction: () {
                print('clicked me 2');
              }),
        ],
      ),
    );
  }
}
