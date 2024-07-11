import 'package:flutter/material.dart';
import 'package:quiz_app_application/screens/score_screen.dart';

class QuestionScreen extends StatelessWidget{

@override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
        actions: [Icon(Icons.message),SizedBox(width: 25,),Icon(Icons.notification_add),SizedBox(width: 25,),Icon(Icons.search),
        SizedBox(width: 25,)
         ],
        title: Text("Quiz App"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Center(child:Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text("Frist Question",style: TextStyle(fontSize:20, fontWeight:FontWeight.bold )),
          Text("Who is the best football player in the world ?",style: TextStyle(fontSize:18, fontWeight:FontWeight.bold )),
          SizedBox(height: 25,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute<void>(
      builder: (BuildContext context) => ScoreScreen(),
    ),
  );
          }, child: Text("Lional Messi")),
          ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute<void>(
      builder: (BuildContext context) => ScoreScreen(),
    ),
  );
          }, child: Text("Bakayo Saka")),
          ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute<void>(
      builder: (BuildContext context) => ScoreScreen(),
    ),
  );
          }, child: Text("Erling Haaland")),
          ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute<void>(
      builder: (BuildContext context) => ScoreScreen(),
    ),
  );
          }, child: Text("Phil Foden")),
        ]
        ,)
        ),
      ) ,
      
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon:Icon(Icons.home), label:"Home" ),
        BottomNavigationBarItem(icon:Icon(Icons.settings), label: "Setting"),
        BottomNavigationBarItem(icon:Icon(Icons.person), label: "Person"),
      ],),
    );

    

  

  }

}