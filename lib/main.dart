import 'package:flutter/material.dart';
import 'color.dart';

void main() => runApp(LoginScreen());

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: clr1,
        ),

        body: Container(
          
        ),
        ),
    );
  }
}