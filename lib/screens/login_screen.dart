import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app_application/screens/category_screen.dart';
import 'package:quiz_app_application/utils/icons.dart';


class LoginScreen extends StatelessWidget{
   LoginScreen({super.key});
  final _formkey = GlobalKey<FormState> ();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
      backgroundColor: Color.fromARGB(255, 57, 161, 59),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        
          child: Column(
            children: [
             SizedBox(height:MediaQuery.of(context).size.height * 1 / 3 ,
             child: Expanded(
               child: Padding(
                 padding: const EdgeInsets.only(top:50),
                 child: Image.asset(alien,height:150 ,width:150 ,),
               ),
             )),
            Spacer(),
             
             Container(
              padding: EdgeInsets.all(20),
              height:MediaQuery.of(context).size.height * 2 / 3 ,
              width: double.infinity,
              decoration: BoxDecoration(
                 color: const Color.fromARGB(255, 206, 199, 199),
                 borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Form(
                key:_formkey ,
                child: Column(children: [
                  Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize:40 ),),
                  SizedBox(height: 12,),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty) {
                        return 'Username field can not be empty';
                      } else if (value.length<3) {
                        return 'Username must be more than or equal to 3 charactar';
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Username',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(30),
                      )
                    ),
                  ),
                  SizedBox(height: 12,),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty) {
                        return 'Password field can not be empty';
                      } else if (value.length<6) {
                        return 'Password must be more than or equal to 6 charactar';
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility_off),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(30),
                      )
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Spacer(),
                    Text("New to quiz app?"),
                    TextButton(onPressed: (){}, child:Text("Register",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),) ),
                          
                  ],),
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      maximumSize: Size(300,45),
                      minimumSize: Size(200,45),
                      elevation: 10,
                      backgroundColor: Colors.green,foregroundColor: Colors.white),
                    onPressed: (){
                      if(_formkey.currentState!.validate()){
                         Navigator.push(context,MaterialPageRoute<void>(
                      builder: (BuildContext context) => CategoryScreen(),
                    ),
                  ); 
                      }
                      
                    } , child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold),)),
                  SizedBox(height: 24,),
                  Image.asset(finger,height:50 ,width:50 ,),
                  SizedBox(height:6 ,),
                  Text("Use touch",style: TextStyle(color: Colors.grey),),
                          
                  Spacer(),
                  Row(children: [
                    Checkbox(value: true, onChanged: (val) {}),
                    Text('Remember me'),Spacer(),TextButton(onPressed: (){}, child: Text('Forget password'))
                  ],)
                          
                ],
                
                          
                ),
              ),
             )
          
          ],
            
          ),
        ),
      ),
      
      
      ),
    );
    
  }

}


    
    
 
  
  
    
    
  










