import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pashe_achi/Pages/doctor_consultancy_screen.dart';
import 'package:pashe_achi/Pages/doctor_info_page.dart';
import 'package:pashe_achi/Pages/onboarding_screen.dart';
import 'package:pashe_achi/Pages/pharmacy_order.dart';
import 'package:pashe_achi/Pages/splashe_screen.dart';
import 'package:pashe_achi/Pages/statictics.dart';
import 'package:pashe_achi/Provider/pashe_achi_provider.dart';

import 'package:provider/provider.dart';

import 'Pages/home_page.dart';
import 'Pages/login_page.dart';
import 'Pages/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<PasheAchiProvider>(
          create: (context) => PasheAchiProvider(),
        ),
      ],
      child: PasheAchiApp(),
    ),
  );
}

class PasheAchiApp extends StatelessWidget {
  const PasheAchiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: DoctorInfoPage(),
    );
  }
}
