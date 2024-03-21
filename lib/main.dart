import 'package:flutter/material.dart';
import 'package:passwordmanager/Detail.dart';
import 'package:passwordmanager/Home.dart';
import 'package:shared_preferences/shared_preferences.dart';

// late SharedPreferences spf;
void main() {
  // Obtain shared preferences.
  // WidgetsFlutterBinding.ensureInitialized();
  // spf = await SharedPreferences.getInstance();

  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
