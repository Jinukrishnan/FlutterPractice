import 'package:flutter/material.dart';
import 'package:login/Screens/HomeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _userName = TextEditingController();

  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/logo/bg.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 200, 20, 20),
          child: Form(
            key: _formKey,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  validator: (String? value) {
                    if (value == null && value!.isEmpty) {
                      return "field is empty";
                    } else {
                      return null;
                    }
                  },
                  controller: _userName,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(),
                    labelText: "User Name",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.text,
                  validator: (value) =>
                      value == null && value!.isEmpty ? "field is empty" : null,
                  controller: _password,
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: visible,
                      child: Text(
                        "Invalid credential",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                        ),
                        onPressed: () {
                          _formKey.currentState!.validate();
                          Login(context);
                        },
                        child: Text("Log in")),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  void Login(BuildContext context) async {
    print(_userName.text);
    print(_password.text);
    if (_userName.text == _password.text) {
      setState(() {
        visible = false;
      });
      // set bool
      final sp = await SharedPreferences.getInstance();
      sp.setBool("Login", true);
      // go home
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => HomeScreen()));
    } else {
      final _errorMessage = "User Name & Password Not Matched";
      // SnackBar
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(
      //     content: Text(_errorMessage),
      //     behavior: SnackBarBehavior.floating,
      //     margin: EdgeInsets.all(20),
      //     backgroundColor: Colors.red[500],
      //     duration: Duration(seconds: 3),
      //   ),
      // );

      // Alert Dialog
      // showDialog(
      //     context: context,
      //     builder: (ctx1) => AlertDialog(
      //           title: Text("Error"),
      //           content: Text(_errorMessage),
      //           actions: [
      //             TextButton(
      //                 onPressed: () {
      //                   Navigator.of(ctx1).pop();
      //                 },
      //                 child: Text("Close"))
      //           ],
      //         ));

      // passing variable
      setState(() {
        visible = true;
      });
    }
  }
}
