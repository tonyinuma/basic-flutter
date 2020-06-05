import 'package:flutter/material.dart';
import 'package:app01/src/screen/card.dart';

class MyApp extends StatelessWidget{

  final double iconSize = 40.0;
  final textStyle = TextStyle(
                        color: Colors.grey[800],
                        fontSize: 30.0, 
                      );

  @override
  Widget build(BuildContext context){
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Zuve App"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(
              title: Text('Me Encanta Flutter!',style: textStyle,),
              icon: Icon(Icons.favorite, color: Colors.pink[500],size: iconSize),    
            ),
            MyCard(
              title: Text('Me Gusta Dart Bro!',style: textStyle,),
              icon: Icon(Icons.thumb_up, color: Colors.blue[500],size: iconSize),    
            ),
            MyCard(
              title: Text('Siguiente Idea!',style: textStyle,),
              icon: Icon(Icons.video_library, color: Colors.brown[500],size: iconSize),    
            )
          ],
        ),
      )
    );

  } 

}
