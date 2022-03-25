import 'package:flutter/material.dart';

class Drawer_Item extends StatelessWidget {
  final IconData? drawerIcon;
  final String? drawerText;
  final Function()? onPressed;
  Drawer_Item({@required this.drawerIcon, @required this.drawerText, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        children: [
          SizedBox(
            width:30,
          ),
          Icon(drawerIcon,
            color: Colors.white,
            size: 20 ,),
          SizedBox(
            width:30,
          ),
          Text(
            drawerText!,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),


        ],

      ),
    );
  }
}
