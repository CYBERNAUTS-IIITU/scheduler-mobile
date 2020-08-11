import 'package:flutter/material.dart';
import 'color.dart';
import 'mainpage.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: clr1));
    return MaterialApp(
      title: "TimeTable",

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: clr1,
          title: Text("Time Table"),
          leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.person_pin), onPressed: null),
            ],
        ),

        body: MainPage(),
      ),
    );
  }
}