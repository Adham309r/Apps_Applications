import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_application/cubits/task3/task3_cubit.dart';
import 'package:quiz_app_application/cubits/task4/cube_sizing_cubit.dart';
import 'package:quiz_app_application/screens/task%201%20&%20task%202.dart';
import 'package:quiz_app_application/screens/task%204_using_cubit.dart';
import 'package:quiz_app_application/screens/task%204_using_state.dart';
import 'package:quiz_app_application/screens/task3_radio.dart';



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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 68, 183, 58)),
        useMaterial3: true,
      ),
      home:BlocProvider(create: (context) => Task3Cubit(),
      child:RadioListScreen (),
      )
      
      
    );
  }
}
