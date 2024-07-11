import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_application/screens/login_screen.dart';
import 'package:quiz_app_application/utils/icons.dart';

class LandingScreen extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
     Center(child: Container(
      //height: MediaQuery.of(context).size.height,
      //width: MediaQuery.of(context).size.width,
      
      decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(LandingImage,)
      , fit: BoxFit.cover)),
      
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [ 
          Spacer(), 
        Image.asset(AppLogo),Text("Quiz App",style: TextStyle(color: Colors.white,
        fontSize: 30, fontWeight: FontWeight.bold),),
        Spacer(),
         SizedBox(
          width: double.infinity,
           child: Padding(
            padding: const EdgeInsets.all(20.0),
              child: ElevatedButton( 
                
                style:ElevatedButton.styleFrom( 
                  backgroundColor: Colors.green
                ) ,
                onPressed: (){
                Navigator.push(context,  MaterialPageRoute<void>(builder: (BuildContext context)=>  LoginScreen(),
                ),
                );  
              },
               child: const Text("Strart",style: TextStyle(color: Colors.white,
                      fontSize: 30, fontWeight: FontWeight.normal))),
            ),
                   ),
         
        
        ],
      ),
      

     ) 
     
    ),
    );
  }







}