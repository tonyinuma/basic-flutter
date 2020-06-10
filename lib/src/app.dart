import 'package:app01/src/screens/second.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
 }
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Primera Pantalla")
     ),
     body: Center(
       child: RaisedButton(
         child: Text("Mostrar Pantalla"),
         onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(
               builder: (context) => Second(title: "Holaaa")
             )
           );
         }
       ),
     ),
   );
  }
}