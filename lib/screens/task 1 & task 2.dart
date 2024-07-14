import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';







class PlayWithStatemanagement extends StatefulWidget{
   PlayWithStatemanagement ({super.key});

  @override
  State<PlayWithStatemanagement> createState() => _PlayWithStatemanagementState();
}

class _PlayWithStatemanagementState extends State<PlayWithStatemanagement> {
  List data = ['قيد التنفيذ','الملغية','المكتملة','تحت المراجعة','تمت'];

  int _selectedItebIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(22),
      child: Column(children: [
        SizedBox(
          height: 100,
        ),
        SizedBox(
          height: 50,
          child: ListView.builder(
           scrollDirection: Axis.horizontal,
            itemCount: data.length,
            itemBuilder:(context, index) {
              return InkWell(
                onTap: () {
                setState(() {
                  _selectedItebIndex = index ;
                });

                  
                  _selectedItebIndex = index ;
                } ,
                child: Container(
                  margin: EdgeInsets.all(8),
                           // height: 35,
                            width: 100,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color:_selectedItebIndex == index ?  Colors.red : const Color.fromARGB(255, 185, 183, 183)),
                            child: Center(child: Text(data[index],style: TextStyle(fontSize:14,fontWeight: FontWeight.bold ),)
                          ),
                ),
              );
            },
            ),
        ),
        SizedBox(
          height: 100,
        ),
        PassWordTextField(),
        ElevatedButton(onPressed: () {
          Fluttertoast.showToast(
        msg: "You have logged in successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
        }, child: Text("Log in"))
      ],
      ),
      
      
      
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class PassWordTextField extends StatefulWidget {
  const PassWordTextField({
    super.key,
  });

  @override
  State<PassWordTextField> createState() => _PassWordTextFieldState();
}

class _PassWordTextFieldState extends State<PassWordTextField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !isVisible,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              isVisible = !isVisible ;
            });
          } ,
          child: Icon(isVisible? Icons.visibility : Icons.visibility_off)),
        border: OutlineInputBorder(borderSide:BorderSide(width: 1)
    ,borderRadius: BorderRadius.circular(22))));
  }
}