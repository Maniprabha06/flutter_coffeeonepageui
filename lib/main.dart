// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:coffeecup/Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
       theme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
      ),
    );
  }
}

