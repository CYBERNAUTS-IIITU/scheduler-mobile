import 'package:flutter/material.dart';
import 'color.dart';
import 'mainpage.dart';
import 'package:flutter/services.dart';
import 'drawer.dart';
import 'loginScreen.dart';

var home =    Scaffold(
            appBar: AppBar(
              backgroundColor: clr1,
              title: Text("Time Table"),
              // leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
              actions: <Widget>[
                Builder(
              builder: (context1) =>IconButton(
                    icon: Icon(Icons.person_pin), 
                    onPressed: ()
                    {
                    Navigator.of(context1).pushNamed('/login');
                    }),
                ),
                ],
            ),

            body: MainPage(),
            drawer: drawer,
          );