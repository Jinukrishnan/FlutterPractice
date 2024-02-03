import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'hello',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.all(10),
          child: Center(
            child: Text(
              'hai',
              style: TextStyle(color: Colors.white),
            ),
          ),
          // used mediaquery for responsive
          width: MediaQuery.of(context).size.width * .5,
          height: MediaQuery.of(context).size.height * .5,
          decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(5),
              // shadow
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 10,
                  blurRadius: 20,
                  offset: Offset(20, 20),
                ),
              ]),
        ),
      ),
    );
  }
}
