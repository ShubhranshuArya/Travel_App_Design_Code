import 'package:flutter/material.dart';
import 'package:project2_travel_app_design/main_screen.dart';
import 'package:project2_travel_app_design/starting_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartingScreen(),
    );
  }
}
