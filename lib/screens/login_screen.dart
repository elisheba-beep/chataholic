import 'package:flutter/material.dart';
import 'package:chataholic/roundedbutton.dart';
import 'package:chataholic/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: Hero(
                tag: 'logo',
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image(
                    image: AssetImage(
                      'images/logoo.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
                decoration:
                    kTextBoxDecoration.copyWith(hintText: 'Enter your email')),
            SizedBox(height: 10.0),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration:
                  kTextBoxDecoration.copyWith(hintText: 'Enter your password'),
            ),
            RoundedButton(
              colour: Colors.black87,
              title: 'Log in',
              onPressed: () async {
                try {
                  final existingUser = await _auth.signInWithEmailAndPassword(
                      email: email, password: password);
                  if (existingUser != null) {
                    Navigator.pushNamed(context, '/fourth');
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
