import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:giveit/homepage/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        accentColor: Color(0xFF4B2FF8),
        primaryColor: Color(0xFF4B2FF8),
      ),
      home: HomePage(),
    );
  }
}
