import 'package:flutter/material.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({super.key});
  final fruits = ["Apple", "Orange", "Grape", "Pine Apple"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: DropdownButtonFormField(
            hint: Text("Select Fruit"),
            items: fruits.map((e) {
              return DropdownMenuItem(
                child: Text(e),
                value: e,
              );
            }).toList(),
            onChanged: (value) {
              print(value);
            }),
      ),
    );
  }
}
