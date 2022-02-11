import 'package:flutter/material.dart';

import 'Pages/home_page.dart';
import 'Pages/welcome_screen.dart';

void main() {
  runApp( PasheAchiApp());
}
class PasheAchiApp extends StatelessWidget {
  const PasheAchiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData.light(),
      home: WelcomeScreen(),
    );
  }
}
