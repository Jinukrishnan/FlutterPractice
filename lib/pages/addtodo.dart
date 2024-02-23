import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  void setTodo() async {
    final prefs = await SharedPreferences.getInstance();
    String? res = prefs.getString('todo');

    if (res != null) {
      List<dynamic> todo = json.decode(res);
      todo.add(tec.text);
      await prefs.setString('todo', json.encode(todo));
    } else {
      List<dynamic> todo = [tec.text];
      await prefs.setString('todo', json.encode(todo));
    }
    Navigator.pushNamed(context, '/');
  }

  final TextEditingController tec = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Add Task")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: tec,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1),
                    borderRadius: BorderRadius.circular(20)),
                labelText: 'Task',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 1),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: setTodo,
                child: Text('Add'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
