import 'package:app01/screens/battery.dart';
import 'package:app01/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:app01/home.dart';

void main() { 
  runApp(
    MaterialApp(
      home:  Home(),
      routes: <String, WidgetBuilder>{
        Settings.routeName: (BuildContext context) => Settings(),
        Battery.routeName: (BuildContext context) => Battery(),
      } 
    ),
  );  
}

