import 'package:flutter/material.dart';

void main() { 
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Mi primera App"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text(
            "Hola mundo ♥",
            style: TextStyle(
             fontSize: 25)
             )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('click');
        },
        child: Icon(Icons.linked_camera),
        backgroundColor: Colors.lightBlue[600],
      ),
    ),
  );  

  runApp(app);
}

