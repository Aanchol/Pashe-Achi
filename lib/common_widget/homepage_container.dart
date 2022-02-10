import 'package:flutter/material.dart';

class HomePageContainer extends StatelessWidget {
  final Color? color;
  final Widget? homepgContainerChild;

  HomePageContainer({@required this.color, @required this.homepgContainerChild});

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(100),
        shape: BoxShape.circle,
        color: color,
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
            stops: [0.2,1.0],
            colors: [
            Colors.red.shade900.withOpacity(1.0),
              Colors.red.shade900.withOpacity(.6),
        ]

        ),

      ),
      child: homepgContainerChild,
    );
  }
}