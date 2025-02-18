import 'package:flutter/material.dart';
import 'package:lscblack_app/screens/FormValidation.dart';
import 'package:lscblack_app/screens/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/',
      routes: {
        '/': (context) =>  Formvalidation(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}