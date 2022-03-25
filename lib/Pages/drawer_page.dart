import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pashe_achi/common_widget/drawer_item.dart';
import 'package:pashe_achi/utils/constants.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:double.infinity,
      width: 300,
      child: Scaffold(
        backgroundColor: kSecondarycolor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: EdgeInsets.only(top:80.0,left:28),
                child: Container(child:
                Image.asset("assets/images/icons/pashe_achi.png"),) ,
              ),
              SizedBox(
                height:100,
              ),
              Drawer_Item(
                drawerText: "About Us".toUpperCase(),
                drawerIcon: FontAwesomeIcons.info,
                onPressed: (){

                },
              ),
              SizedBox(
                height:30,
              ),
              Drawer_Item(
                drawerText: "Delete Account".toUpperCase(),
                drawerIcon: FontAwesomeIcons.cross,
                onPressed: (){

                },
              ),
              SizedBox(
                height:30,
              ),
              Drawer_Item(
                drawerText: "Log Out".toUpperCase(),
                drawerIcon: FontAwesomeIcons.backward,
                onPressed: (){

                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}


