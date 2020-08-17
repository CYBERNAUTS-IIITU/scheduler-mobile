import 'package:flutter/material.dart';
import 'color.dart';
import 'package:flutter/services.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context1) {
       SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: clr1,
    ));
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return  Builder(

          builder: (context1) => Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(
          //   title: Text("Login"),
          //   backgroundColor: clr1,
          // ),
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

                  SizedBox(
                    width: 300,
                    child: ListTile(
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
                  ),

                  SizedBox(
                    width: 300,
                    child: ListTile(
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
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: SizedBox(
                        width: 300,
                        child: MaterialButton(
                          child: Text("  Log In  ",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          ),),
                          onPressed:(){
                            Navigator.of(context).pushNamed('/home');
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: clr1,
                        ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: GestureDetector(
                      onTap: (){},
                      child: Text("Forgot Password ? Click Here"),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  //       ),
  //   );
  // }
  }}