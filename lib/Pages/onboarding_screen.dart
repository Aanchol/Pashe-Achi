import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pashe_achi/Pages/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({Key? key}) : super(key: key);


  final List<PageViewModel> pages = [
    PageViewModel(
        title: 'Wear a Mask',
        body: 'Wear a properly fitted mask when physical distancing is not possible and in poorly ventilated settings.',
        footer: SizedBox(
          height: 45,
          width: 300,
        ),
        image: Center(
          child: Image.asset('assets/images/wear_mask.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
        title: 'Wash Your Hand',
        body: 'Clean your hands frequently with alcohol-based hand rub or soap and water',
        footer: SizedBox(
          height: 45,
          width: 00,
        ),
        image: Center(
          child: Image.asset('assets/images/wash_hands.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
    PageViewModel(
        title: 'Keep Social Distance',
        body: 'Keep physical distance of at least 1 metre from others, even if they don’t appear to be sick. Avoid crowds and close contact',
        footer: SizedBox(
          height: 45,
          width: 300,
        ),
        image: Center(
          child: Image.asset('assets/images/social_distance.jpg'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
          child: IntroductionScreen(
            pages: pages,
            dotsDecorator: const DotsDecorator(
              size: Size(15, 15),
              color: Color(0xFF9bd7d5),
              activeSize: Size.square(20),
              activeColor: Colors.blue,
            ),
            showDoneButton: true,
            done: Text('Done',
              style: TextStyle(fontSize: 20, color: Color(0xFF9bd7d5),),),
            showSkipButton: true,
            skip: Text('Skip',
              style: TextStyle(fontSize: 20, color: Color(0xFF9bd7d5),),),
            showNextButton: true,
            next: Icon(
              Icons.arrow_forward, size: 25, color: Color(0xFF9bd7d5),),
            onDone: () => onDone(context),
            //curve: Curves.bounceOut,
          ),
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen()));
  }
}

