import 'package:flutter/material.dart';
import 'LoginPage.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login page",
theme: ThemeData.dark(),
home: LoginPage(),      
    );
  }
}

