import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app_application/screens/landing_screen.dart';
import 'package:quiz_app_application/screens/score_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 68, 183, 58)),
        useMaterial3: true,
      ),
      home:LandingScreen(),
    );
  }
}











