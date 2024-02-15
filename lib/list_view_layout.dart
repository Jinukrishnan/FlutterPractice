import 'package:flutter/material.dart';

class ListViewLayout extends StatelessWidget {
  const ListViewLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            'List View',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // height: MediaQuery.of(context).size.height,
        color: Colors.grey,
        child: ListView(
          scrollDirection: Axis.horizontal,
          // scrollDirection: Axis.horizontal,
          reverse: true,
          padding: EdgeInsets.all(30),

          children: [
            Container(
              color: Colors.red,
              width: 300,
              height: 300,
              child: Center(
                child: Text(
                  'contact1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              width: 300,
              height: 300,
              child: Center(
                child: Text(
                  'contact1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              width: 300,
              height: 300,
              child: Center(
                child: Text(
                  'contact1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.yellow,
              width: 300,
              height: 300,
              child: Center(
                child: Text(
                  'contact1',
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
