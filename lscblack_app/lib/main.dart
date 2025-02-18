import 'package:flutter/material.dart';
import 'package:lscblack_app/screens/FormValidation.dart';
import 'package:lscblack_app/screens/HomePage.dart';
import 'package:lscblack_app/screens/ProfileView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/',
      routes: {//create routes for the app
        '/': (context) =>  Formvalidation(),
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileView(),
      },
    );
  }
}