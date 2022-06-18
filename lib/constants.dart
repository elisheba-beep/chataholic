import 'package:flutter/material.dart';

const kTextStyle = TextStyle(
    fontFamily: 'Pacifico',
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: 30.0);
const kTextBoxDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: '',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      (Radius.circular(30.0)),
    ),
    borderSide: BorderSide(color: Colors.black54),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black87, width: 1.0),
    borderRadius: BorderRadius.all(
      (Radius.circular(30.0)),
    ),
  ),
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      (Radius.circular(30.0)),
    ),
    borderSide: BorderSide(color: Colors.black87, width: 2.0),
  ),
);
const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.black54, width: 2.0),
  ),
);
const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: InputBorder.none,
  hintText: 'Type your message',
);
const kSendTextStyle = TextStyle(
    color: Colors.black54, fontSize: 18.0, fontWeight: FontWeight.bold);
