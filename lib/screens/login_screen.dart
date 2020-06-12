import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
 }
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(50.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  /* hintText: 'tell me your name', */
                  labelText: 'Name *',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: 'Password *',
                ),
                obscureText: true,
              ),
              RaisedButton(onPressed: null, child: Text("Acceder"),)
            ],
          )
        ),
    );
  }

  emailField(){

  }

  passwordField(){

  }

  submitField(){
    
  }

}