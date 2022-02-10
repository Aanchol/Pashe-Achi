import 'package:flutter/material.dart';
import 'package:pashe_achi/utils/constants.dart';

class HomepgIconContent extends StatelessWidget {
  final IconData? icon;
  final String? homepgLabel;

  HomepgIconContent({@required this.icon, @required this.homepgLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kIconSize,
          color: Colors.white,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          homepgLabel!,
          style: labelTextstyle,
        ),
      ],
    );
  }
}
