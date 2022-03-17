import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pashe_achi/common_widget/welcomepg_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Automatic identity verification which enables you to verify your identity",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/doctor.jpg')),
                  ),
                ),
                Column(
                  children: [
                    WelcomepgButton(
                      btncolor: Color(0xFFB71C1C),
                      btnlabel: "LOGIN",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    WelcomepgButton(
                      btncolor: Color(0xFF9bd7d5),
                      btnlabel: "SIGNUP",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Color(0xFF9bd7d5)
