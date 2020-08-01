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
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: clr1,
        ),

        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Image.asset("images/timetable.jpg",
                  height: 300,
                  width: 300,),
                  ),

                ListTile(
                  leading: Icon(Icons.person),
                  title: TextFormField(
                    validator: (input){
                      if(input.isEmpty)
                      {
                        return "Invalid Username";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Username",
                    ),
                  ),
                ),

                ListTile(
                  leading: Icon(Icons.lock),
                  title: TextFormField(
                    validator: (input){
                      if(input.isEmpty)
                      {
                        return "Invalid Password";
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    child: Text("  Log In  "),
                    onPressed:(){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: clr1,
                  
                  ),
                )
              ],
            ),
          ),
        ),
        ),
    );
  }
}