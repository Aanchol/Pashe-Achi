import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pashe_achi/Pages/onboarding_screen.dart';
import 'package:pashe_achi/Pages/welcome_screen.dart';

import '../repository/pashe_achi_repository.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);



  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    Timer(duration,
            ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return OnBoardingPage();
          })
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex:2,
              child:Container(),
            ),
            Container(
              height: 350,
              width: 350,
              child: Image.asset(
                "assets/images/icons/pashe_achi.png",
              ),
            ),
            Expanded(
              flex:1,
              child: Container(),
            ),
            Container(
              height:2,
              width:250,
              child: LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
                //color: Colors.green,
                backgroundColor: Colors.transparent,

              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}