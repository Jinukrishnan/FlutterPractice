import 'package:blood_donation_bank/pages/AddMember.dart';
import 'package:blood_donation_bank/pages/Home.dart';
import 'package:blood_donation_bank/pages/update.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/add': (context) => AddMember(),
      '/update': (context) => UpdateDonor(),
    },
  ));
}
