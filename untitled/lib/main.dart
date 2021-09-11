import 'dart:async';
import 'splashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Navigate/contactform.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      title: 'Arak Bchaaleh',
      theme: ThemeData(

        brightness: Brightness.light,
        primaryColor: Colors.white,
        

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.brown),
          headline6: TextStyle(fontSize: 15.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 21.0, fontFamily: 'Georgia',fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}


