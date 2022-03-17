import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pashe_achi/Pages/home_page.dart';
import 'package:pashe_achi/Provider/pashe_achi_provider.dart';
import 'package:pashe_achi/common_widget/welcomepg_button.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController? emailController;
  TextEditingController? passwordController;

  FirebaseAuth? auth;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();

    auth = FirebaseAuth.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PasheAchiProvider>(
      builder: (_, provider, ___) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.red.shade900,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
            ),
          ),
          body: ModalProgressHUD(
            inAsyncCall: provider.showSpinner,
           child:SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Login to your account",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        makeInput(
                            label: "Email",
                            obscureText: false,
                            controller: emailController),
                        makeInput(
                            label: "Password",
                            obscureText: true,
                            controller: passwordController),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          )),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () async {
                          provider.showSpinner=true;


                            if (emailController!.text.length > 2 &&
                                passwordController!.text.length > 4) {
                              try {
                                final user = await auth!
                                    .signInWithEmailAndPassword(
                                    email: emailController!.text,
                                    password: passwordController!.text);
                                if (user.user!.email == emailController!.text) {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                        return HomePage();
                                      }));
                                }
                              } catch (e) {

                                provider.showSpinner = false;

                                Alert(
                                    context: context,
                                    type: AlertType.error,
                                    title: "Login Failed",
                                    desc: "Error from firebase")
                                    .show();
                              }
                            } else {

                              provider.showSpinner = false;

                              Alert(
                                context: context,
                                type: AlertType.error,
                                title: "Login Failed",
                                desc: "All fields are required",
                              ).show();
                            }

                        },
                        color: Color(0xFF9bd7d5),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account ?"),
                      Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 240,
                    //height: MediaQuery.of(context).size.height/2,
                    margin: const EdgeInsets.only(),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/corona virus.jpg"),
                      fit: BoxFit.cover,
                    )),
                  ),
                ],
              ),
            ),
          ),
          ),
        );
      }
    );
  }

  Widget makeInput({label, obscureText, controller}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400))),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
