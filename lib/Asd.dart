import 'package:flutter/material.dart';

class Asd extends StatelessWidget {
  const Asd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
           TextButton(
            onPressed: () {},
            child: Text("outline button"),
          ),
          SizedBox(height: 50),
          OutlinedButton(
            onPressed: () {},
            child: Text("outline button"),
            style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.red),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.all(20)),
          ),
          SizedBox(height: 50),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message),
            color: Colors.blue[300],
            splashColor: Colors.red,
            // highlightColor: Colors.green,
          )
        ],
      ),
    );
  }
}