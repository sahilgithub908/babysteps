import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool hide = true;
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body:SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 40),
              child: Text("\nCreate \nAccount.",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w300),),
            )
            ,         Container(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.35),
              width: double.infinity,
              height: 550,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(0),topLeft: Radius.circular(50))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Full Name",

                    ),
                  ),

                  SizedBox(height: 15,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "E-mail",

                    ),
                  ),

                  SizedBox(height: 15,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Phone Number",

                    ),
                  ),

                  SizedBox(height: 15,),
                  TextField(
                    controller: password,
                    obscureText: hide,
                    decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon:IconButton(onPressed: (){
                          setState(() {
                            hide = !hide;
                          });
                        },icon:hide?Icon(Icons.visibility_off):Icon(Icons.visibility),)
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    controller: confirmPassword,
                    obscureText: hide,
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        suffixIcon:IconButton(onPressed: (){
                          setState(() {
                            hide = !hide;
                          });
                        },icon:hide?Icon(Icons.visibility_off):Icon(Icons.visibility),)
                    ),
                  ),
                  SizedBox(height: 15,),
                  Center(
                    child: ElevatedButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 130)
                        ),
                        onPressed: (){
                          if(password.text != confirmPassword.text){
                            showDialog(context: context, builder: (context){
                              return AlertDialog(
                                title: Text("Messages"),
                                content: Text("Password do not match each other"),
                                actions: [
                                  TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text("Ok"))
                                ],
                              );
                            });
                          }
                        }, child: Text("Sign Up")),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      }, child: Text("                     Sign In >", style: TextStyle(color: Colors.black,fontSize:14,)))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}