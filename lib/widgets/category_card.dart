


import 'package:flutter/material.dart';
import 'package:quiz_app_application/screens/question_screen.dart';

class CategoryCard extends StatelessWidget{
  final String quizName;
  final Color quizColor;
  const CategoryCard({
    required this.quizName,
    required this.quizColor,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child:InkWell( onTap: () => Navigator.push(context, MaterialPageRoute<void>(
      builder: (BuildContext context) => QuestionScreen (),
    ),
  ),

      child: Container(
        color: quizColor,
        child: Center(child:Text(quizName,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),))
        ),
    ) 
      );




  }




}



