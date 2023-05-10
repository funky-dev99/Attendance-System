

import 'package:attendance_system/pages/home_page.dart';
import 'package:attendance_system/pages/login.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      home:LoginPage(),
    );
  }
}

