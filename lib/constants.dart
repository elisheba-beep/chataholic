import 'package:flutter/material.dart';

const kTextStyle = TextStyle(
    fontFamily: 'Pacifico',
    fontWeight: FontWeight.bold,
    color: Color(0xffeceae3),
    fontSize: 30.0);
const kTextBoxDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: '',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      (Radius.circular(30.0)),
    ),
    borderSide: BorderSide(color: Color(0xff2a2f3c)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xff2a2f3c), width: 1.0),
    borderRadius: BorderRadius.all(
      (Radius.circular(30.0)),
    ),
  ),
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      (Radius.circular(30.0)),
    ),
    borderSide: BorderSide(color: Color(0xff2a2f3c), width: 2.0),
  ),
);
const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Color(0xffaed3d8), width: 2.0),
  ),
);
const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: InputBorder.none,
  hintText: 'Type your message',
);
const kSendTextStyle = TextStyle(
    color: Color(0xff2a2f3c), fontSize: 18.0, fontWeight: FontWeight.bold);
