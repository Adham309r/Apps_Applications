

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app_application/screens/category_screen.dart';
import 'package:quiz_app_application/screens/landing_screen.dart';

class ScoreScreen extends StatelessWidget{
  const ScoreScreen({super.key});

// ignore: empty_constructor_bodies
@override
  Widget build(BuildContext context) {
    return Scaffold(

     body : Padding(
       padding: const EdgeInsets.all(22),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(" Hello Adham , you have finish the quiz , and your score is "),
        Text("14/20",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.red),
        ),
        SizedBox(
          height: 30,
        ),
       ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute<void>(
      builder: (BuildContext context) => CategoryScreen(),
    ),
  );
       }, child: Text("play again")),
       SizedBox(height: 10,),
        OutlinedButton(onPressed: (){
         Navigator.pushAndRemoveUntil(context, MaterialPageRoute<void>(builder: (BuildContext context) => LandingScreen()),
    ModalRoute.withName('//'),
  );
        }, child: Text("Exist")),
       ]
       ,),
     ) 
    );
  }

}


