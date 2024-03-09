import 'package:babysteps/main.dart';
import 'package:babysteps/signUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LandingPage(),
  ));
}
class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool hide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body:SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 40),
              child: Text("\nStart a new \nadventure.",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w300),),
            )
            ,         Container(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.75),
              width: double.infinity,
              height: 750,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(0))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Get involved with people and events around you.\n",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),

                  Center(
                    child: ElevatedButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 60)
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                        }, child: Text("Sign In")),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpPage()));
                      }, child: Text("Or Create Account -->"))
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
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Home Page"),
        backgroundColor: Colors.grey,
      ),
      body: Center(child: Text("Welcome To Home Page",style: TextStyle(fontSize: 30),),),
    );
  }
}