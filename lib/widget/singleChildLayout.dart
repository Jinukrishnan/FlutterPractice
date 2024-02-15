import 'package:flutter/material.dart';

class SingleChildLayout extends StatelessWidget {
  const SingleChildLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(100),
      child: Text('hai'),
    );
    //     Center(
    //   child: Text('hello'),
    // );
    //     SizedBox(
    //   height: 100,
    //   width: 500,
    //   child: Text('sizedbox'),
    // );
    //     Align(
    //   child: Text('hai'),
    //   alignment: Alignment.bottomCenter,

    // );
  }
}


// container
// paddig
// center
// sizedBox
// align