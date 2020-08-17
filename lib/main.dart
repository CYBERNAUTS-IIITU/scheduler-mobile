import 'package:flutter/material.dart';
import 'color.dart';
import 'mainpage.dart';
import 'package:flutter/services.dart';
import 'drawer.dart';
import 'loginScreen.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: clr1));
    return MaterialApp(
      title: "TimeTable",
      debugShowCheckedModeBanner: false,

      routes: <String,WidgetBuilder>{
        '/login': (context1) => LoginScreen(),
        '/home': (context) => home,
      },

      home: LoginScreen()
    );
  }}