import 'package:flutter/material.dart';
import 'color.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  var days = [
    "Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"
  ];

  int t = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: 49,
              itemBuilder: (BuildContext ctxt, int index) => ( index % 7 == 0 )? Container(
                child : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 5.0),
                      child: Divider(
                        indent: 10,
                      ),
                    ),
                    Padding(
                    padding: EdgeInsets.all(5.0),
                      child:Text(days[t++],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),)
                    ),
                    Padding(
                    padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 10.0),
                      child: Divider(
                        indent: 10,
                      ),
                    ),
                ],)
              ):
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.computer),
                  title: Text("Demo Class ${index%7}"),
                ),
              )
              )
            )
        ],
      ),
    );
  }
}