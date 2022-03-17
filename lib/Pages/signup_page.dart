import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pashe_achi/Pages/home_page.dart';
import 'package:pashe_achi/Provider/pashe_achi_provider.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController? emailController;
  TextEditingController? passwordController;
  TextEditingController? confirmPasswordController;
  FirebaseAuth? auth;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    auth = FirebaseAuth.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PasheAchiProvider>(builder: (_, provider, ___) {
      return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          //elevation: 0,
          //brightness: Brightness.light,
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
          child: SingleChildScrollView(
            child: Container(
              //padding: EdgeInsets.symmetric(horizontal: 40),
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Create an account",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
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
                          controller: passwordController,
                        ),
                        makeInput(
                            label: "Confirm Password",
                            obscureText: true,
                            controller: confirmPasswordController),
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

                          if (passwordController!.text ==
                              confirmPasswordController!.text) {
                            if (emailController!.text.length > 2 &&
                                passwordController!.text.length > 4) {
                              try {
                                final user = await auth!
                                    .createUserWithEmailAndPassword(
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
                                        title: "Signup Failed",
                                        desc: "Error from firebase")
                                    .show();
                              }
                            } else {

                              provider.showSpinner = false;

                              Alert(
                                context: context,
                                type: AlertType.error,
                                title: "Signup Failed",
                                desc: "All fields are required",
                              ).show();
                            }
                          } else {
                            print(
                                "Password and confirm password are not matched");
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
                          "SIGNUP",
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
                      Text("Already have an account?"),
                      Text(
                        " LogIn",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
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
