import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> todo = [];
  _HomeState() {
    getTodo();
  }
  void getTodo() async {
    final prefs = await SharedPreferences.getInstance();
    String? res = prefs.getString('todo');
    setState(() {
      todo = json.decode(res!);
    });
    print(todo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Todos")),
      ),
      body: ListView.builder(
        itemCount: todo.length,
        itemBuilder: (context, index) {
          bool? val = false;
          return ListTile(
            leading: Checkbox(
              value: true,
              onChanged: (value) {
                setState(() {
                  val = !val!;
                  print('cfdhjvfbdhbvhjdfgvbfjhgbdfjbv$val');
                });
              },
            ),
            title: Text(todo[index]),
            trailing: IconButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  print(index);
                  setState(() {
                    todo.removeAt(index);
                  });
                  await prefs.setString('todo', json.encode(todo));
                },
                icon: Icon(Icons.delete)),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addtodo');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
