import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(
          child: Text(
            'Stack Widget',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Container(
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          width: 300,
          height: 500,
          color: Colors.green[100],
          child: Stack(
            // clipBehavior: Clip.none,
            textDirection: TextDirection.rtl,
            alignment: Alignment.topLeft,
            children: [
              Positioned(
                  left: 200,
                  top: 200,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.red,
                  )),
              Positioned(
                  right: 200,
                  bottom: 300,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.green,
                  )),
              Positioned(
                  top: -100,
                  left: 200,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                  )),
              //// Align(
              //   alignment: Alignment.bottomRight,
              //   child: Container(
              //     width: 200,
              //     height: 200,
              //     color: Colors.red,
              //   ),
              // ),
              // Align(
              //   alignment: Alignment.topLeft,
              //   child: Container(
              //     width: 200,
              //     height: 200,
              //     color: Colors.green,
              //   ),
              // ),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: Container(
              //     width: 200,
              //     height: 200,
              //     color: Colors.blue,
              //   ),
              // ),
              // Align(
              //   alignment: Alignment.topRight,
              //   child: Container(
              //     width: 200,
              //     height: 200,
              //     color: Colors.yellow,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
