import 'package:flutter/material.dart';
import 'package:pd_ui6/animation/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 80,),
             Expanded(
               child: Column(
                 children: [
                   FadeAnimation(2, Text("Find the best parties near you", style: TextStyle(color: Colors.yellow, fontSize: 40,),),),
                   SizedBox(height: 30,),
                   FadeAnimation(1.2, Text("Let us find you a party for your interest", style: TextStyle(color: Colors.cyanAccent, fontSize: 28, fontWeight: FontWeight.w300),),),
                 ],
               ),
             ),
              SizedBox(height: 150,),

              _isLogin ?
                  FadeAnimation(1.4, Container(
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.yellow[900]
                    ),
                    child: Center(
                        child: Text("Start", style: TextStyle(color: Colors.white, fontSize: 18),)
                    ),
                  ))
              :
              FadeAnimation(1.4,Container(
                child: Row(
                  children: [
                   Expanded(
                     child:  Container(
                       height: 55,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(50),
                           color: Colors.red
                       ),
                       child: Center(
                           child: Text("Google", style: TextStyle(color: Colors.white, fontSize: 18),)
                       ),
                     ),
                   ),
                    SizedBox(width: 10,),
                   Expanded(
                     child:  Container(
                       height: 55,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(50),
                           color: Colors.blue
                       ),
                       child: Center(
                           child: Text("Facebook", style: TextStyle(color: Colors.white, fontSize: 18),)
                       ),
                     ),
                   )
                  ],
                ),
              )),
              // SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}
