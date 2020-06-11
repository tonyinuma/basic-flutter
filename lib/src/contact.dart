import 'package:app01/src/model/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:app01/src/screens/contact_item.dart';

class Contact extends StatelessWidget {

  buildList(){
    return <ContactModel>[
      ContactModel(name: "Ronaldo", email: "cristiano@mailcom"),
      ContactModel(name: "Juan", email: "juan@mailcom"),
      ContactModel(name: "rafael", email: "rafa@mailcom"),
      ContactModel(name: "jose", email: "pepe@mailcom"),
      ContactModel(name: "luis", email: "lucho@mailcom"),
      ContactModel(name: "piero", email: "piero@mailcom"),
      ContactModel(name: "jorge", email: "george@mailcom"),
      ContactModel(name: "julian", email: "julian@mailcom"),
      ContactModel(name: "julian", email: "julian@mailcom"),
      ContactModel(name: "julian", email: "julian@mailcom"),
      ContactModel(name: "julian", email: "julian@mailcom"),
      ContactModel(name: "julian", email: "julian@mailcom"),
      ContactModel(name: "julian", email: "julian@mailcom"),
      ContactModel(name: "julian", email: "julian@mailcom"),
      ContactModel(name: "julian", email: "julian@mailcom"),
      ContactModel(name: "julian", email: "julian@mailcom"),
      ContactModel(name: "julian", email: "julian@mailcom"),
      ContactModel(name: "julian", email: "julian@mailcom"),
      ContactModel(name: "oscar", email: "oscar@mailcom")
    ];
  }

  List<ContactItem> buildContactList(){
    return buildList().map<ContactItem>((contact) => ContactItem(contact: contact)).toList();
  }

 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Contacts"),
      ),
    body: ListView(
      children: buildContactList()
    ),      
 );
 }
}