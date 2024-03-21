import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login/Screens/LoginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                SignOut(context);
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text("Home"),
        ),
      ),
    );
  }

  void SignOut(BuildContext context) async {
    final spf = await SharedPreferences.getInstance();
    spf.clear();
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => ScreenLogin()), (route) => false);
  }
}
