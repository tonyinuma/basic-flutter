import 'package:flutter/material.dart';
import 'package:app01/mixins/validation_mixins.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
 }

class _LoginScreenState extends State<LoginScreen> with ValidationMixins{

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(50.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              emailField(),
              passwordField(),
              Container(margin: EdgeInsets.only(top: 25.0)),
              submitField()
            ],
          )
        ),
    );
  }

  Widget emailField(){
    return TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'example@email.com', 
                  labelText: 'Email *',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: validateEmail,
                onSaved: (String value){
                  print("saved "+value);
                },
              );
  }

  Widget passwordField(){
    return TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: 'Password *',
                ),
                obscureText: true,
                validator: validatePassword,
                onSaved: (String value){
                  print(value);
                },
              );
  }

  Widget submitField(){
    return RaisedButton(
        onPressed: (){
          if(formKey.currentState.validate()){ 
          formKey.currentState.save();
          }
        }, 
        child: Text("Entrar"),
      );
  }

}
