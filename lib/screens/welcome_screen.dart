import 'package:chataholic/roundedbutton.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      'images/logo01.png',
                    ),
                  ),
                ),
                Text(
                  'Chataholic',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2a2f3c),
                      fontSize: 30.0),
                ),
              ],
            ),
            RoundedButton(
              colour: Color(0xff2a2f3c),
              title: 'Log in',
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
            RoundedButton(
              colour: Color(0xff2a2f3c),
              title: 'Register',
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            )
          ],
        ),
      ),
    );
  }
}
