import 'package:flutter/material.dart';
import 'color.dart';

var drawer = Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("Devang Sharma"), 
          accountEmail: Text("19308@iiitu.ac.in"),
          currentAccountPicture: Icon(Icons.person_outline,color: Colors.white,),
          decoration: BoxDecoration(
            color: clr1,
          ),),

          ListTile(
           title: Text("Tommorow's Schedule"),
          ),

          
      ],
    ),
  );