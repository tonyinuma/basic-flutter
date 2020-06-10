import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  Drawer getDrawer(BuildContext context){

    var header = DrawerHeader(child: Text("Ajustes"));
    var about = AboutListTile(
      child: Text("About"),
      applicationIcon: Icon(Icons.book),  
      applicationVersion: "v1.0.0",
      icon: Icon(Icons.adb),  
      );
  
    ListTile getItem(Icon icon, String description, String routeName){
      return ListTile(
        leading: icon,
        title: Text(description),
        onTap: () {
          Navigator.pushNamed(context, routeName);
          },
      );
    }
    
    ListView getList(){
      return ListView(
        children: <Widget>[
          header,
          getItem(Icon(Icons.settings), 'Settings',"/settings"),
          getItem(Icon(Icons.home), 'Home Page',"/"),
          getItem(Icon(Icons.battery_charging_full), 'Baterry',"/battery"),
          about
        ],
      );
    }

    return Drawer(child: getList());
 }
 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Home Page"),
    ),
    drawer: getDrawer(context)
  );
 }
}