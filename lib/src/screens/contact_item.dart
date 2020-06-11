import 'package:app01/src/model/contact_model.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  
  final ContactModel contact;

  ContactItem({this.contact});

 @override
 Widget build(BuildContext context) {
  return ListTile(
    leading: CircleAvatar(child: Text(contact.name[0])),
    title: Text(contact.name),
    subtitle: Text(contact.email),
  );
 }
}



