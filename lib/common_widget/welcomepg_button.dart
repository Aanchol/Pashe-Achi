import 'package:flutter/material.dart';

class WelcomepgButton extends StatelessWidget {
  final Color? btncolor;
  final String? btnlabel;

  WelcomepgButton({@required this.btncolor, @required this.btnlabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border(
            bottom: BorderSide(color: Colors.black),
            top: BorderSide(color: Colors.black),
            left: BorderSide(color: Colors.black),
            right: BorderSide(color: Colors.black),
          )
      ),
      child: MaterialButton(
        minWidth: double.infinity,
        height: 60,
        onPressed: () {},
        color: btncolor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          btnlabel!,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
