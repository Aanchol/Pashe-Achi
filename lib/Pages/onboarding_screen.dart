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
          child:  Image.asset('assets/images/wear_mask.png'),
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
          width: 300,
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
              size: Size(15,15),
              color: Color(0xFF9bd7d5),
              activeSize: Size.square(20),
              activeColor: Colors.blue,
            ),
            showDoneButton: true,
            done: const Text('Done', style: TextStyle(fontSize: 20,color: Color(0xFF9bd7d5),),),
            showSkipButton: true,
            skip: const Text('Skip', style: TextStyle(fontSize: 20, color: Color(0xFF9bd7d5),),),
            showNextButton: true,
            next: const Icon(Icons.arrow_forward, size: 25, color: Color(0xFF9bd7d5),),
            onDone: () => onDone(context),
            curve: Curves.bounceOut,
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

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Container(
//             width: double.infinity,
//             height: MediaQuery.of(context).size.height,
//             padding: EdgeInsets.symmetric(horizontal: 30, vertical: 130),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height / 3,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage('assets/images/wear_mask.png')),
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Text(
//                       "Wear a mask",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 30,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       "Automatic identity verification which enables you to verify your identity",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.grey[700],
//                         fontSize: 15,
//                       ),
//                     ),
//
//
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
  }
