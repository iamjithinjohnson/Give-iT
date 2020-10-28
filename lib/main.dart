import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:giveit/homepage/homepage.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF4B2FF8), //or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Color(0xFF4B2FF8),
        primaryColor: Color(0xFF4B2FF8),
      ),
      home: HomePage(),
    );
  }
}
