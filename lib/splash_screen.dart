import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/login_screen.dart';
import 'package:project/login_screen.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen>{
  @override
  Widget build(BuildContext context){
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                LoginScreen()
            )
        ));
   return  initWidget();
  }

  initWidget(){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: new Color(0xffF5591F),
              gradient: LinearGradient(
                colors: [(new Color(0xffF5591F)),new Color(0xffF2861E)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            )
          ),
          Center(
             child: Container(
               child: Image.asset("images/app_logo.png"),

             )
          )
        ],
      ) ,
    );
  }
}