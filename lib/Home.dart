import 'package:flutter/material.dart';
import 'package:passwordmanager/Detail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    getSavedData(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _textController,
            ),
            ElevatedButton(
                onPressed: () {
                  saveDataToStoage();
                },
                child: Text("Save Value"))
          ],
        ),
      )),
    );
  }

  Future<void> saveDataToStoage() async {
    print(_textController.text);
    final spf = await SharedPreferences.getInstance();
    await spf.setString('saved_value', _textController.text);
  }

  Future<void> getSavedData(BuildContext context) async {
    final spf = await SharedPreferences.getInstance();
    final saved_value = spf.getString("saved_value");
    if (saved_value != null) {
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Detail()));
    }
  }
}
