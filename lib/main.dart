import 'package:flutter/material.dart';

// TextButton,OutlLinedButton
void main() {
  runApp(MaterialApp(
    home: ButtonWidget(),
  ));
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Button Widget'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
