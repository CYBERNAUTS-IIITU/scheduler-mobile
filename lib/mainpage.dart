import 'package:flutter/material.dart';
import 'color.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          ListTile(
            leading: Icon(Icons.personal_video),
            title: Text("Demo Class 1"),
            subtitle: Text("Subject - Teacher"),
          ),
          ListTile(
            leading: Icon(Icons.personal_video),
            title: Text("Demo Class 1"),
            subtitle: Text("Subject - Teacher"),
          ),
          ListTile(
            leading: Icon(Icons.personal_video),
            title: Text("Demo Class 1"),
            subtitle: Text("Subject - Teacher"),
          ),
          ListTile(
            leading: Icon(Icons.personal_video),
            title: Text("Demo Class 1"),
            subtitle: Text("Subject - Teacher"),
          ),
          ListTile(
            leading: Icon(Icons.personal_video),
            title: Text("Demo Class 1"),
            subtitle: Text("Subject - Teacher"),
          ),
        ],
      ),
    );
  }
}