import 'dart:async';
import 'package:fitness_app/core/constant/strings.dart';
import 'package:fitness_app/main.dart';
import 'package:fitness_app/ui/screens/auth/signup/signup_screen.dart';
import 'package:fitness_app/ui/screens/splash_screen.dart';

import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignupScreen(),));

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("$staticAssets/splashScreen.png"),

    ) ;
  }
}
