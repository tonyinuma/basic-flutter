import 'package:flutter/material.dart';

class MyButton extends StatefulWidget{

  @override
  _MybuttonState createState() => _MybuttonState();


}

class _MybuttonState extends State<MyButton>{

String nicknameText = "Tony";
int index = 0;
List <String> collections = ['Jim', 'Andres', 'Juan', 'José','Samuel'];

void onPressedButton(){
  setState(() {
    nicknameText = collections[index];
    index = index < 4 ? index+1 : 0;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Stateful Widget"),
          backgroundColor: Colors.black,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Hola Mundo soy ", style: TextStyle(fontSize: 20.0),),
              Text(nicknameText, style: TextStyle(fontSize: 40.0),),
              Padding(padding: EdgeInsets.all(20.0)),
              RaisedButton(
                child: Text("Cambiar", style: TextStyle(color: Colors.white),),
                onPressed: onPressedButton,
                color: Colors.black,
              )
            ],
          )
        )
      )
    );
  }
}



