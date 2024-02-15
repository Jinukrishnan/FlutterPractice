import 'package:flutter/material.dart';

class GridViewLayout extends StatelessWidget {
  const GridViewLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Grid View',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GridView.count(
          scrollDirection: Axis.horizontal,
          crossAxisCount: 3,
          children: [
            Container(
              color: Colors.green,
              width: 300,
              height: 200,
              child: Center(
                child: Text(
                  'one',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              width: 300,
              height: 200,
              child: Center(
                child: Text(
                  'two',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.black,
              width: 300,
              height: 200,
              child: Center(
                child: Text(
                  'three',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.yellow,
              width: 300,
              height: 200,
              child: Center(
                child: Text(
                  'four',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
