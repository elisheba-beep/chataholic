import 'package:firebase_core/firebase_core.dart';
import 'package:chataholic/screens/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Chataholic());
}

class Chataholic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: Color(0xFF004aad)),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/second': (context) => RegisterScreen(),
        '/third': (context) => LoginScreen(),
        '/fourth': (context) => ChatScreen(),
      },
    );
  }
}
