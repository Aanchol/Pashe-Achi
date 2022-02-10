import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pashe_achi/common_widget/homepage_container.dart';
import 'package:pashe_achi/common_widget/homepg_iconcontent.dart';
import 'package:pashe_achi/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text('Pashe Achi'),
        centerTitle: true,
        leading: Icon(Icons.menu_outlined),
        backgroundColor: Colors.red.shade900,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30))),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi!',
                        style: TextStyle(color: Colors.black87, fontSize: 25),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'What are you looking for?',
                        style: TextStyle(color: Colors.black87, fontSize: 35),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black87,
                              ),
                              hintText: "Search you're looking for",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15)),
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: HomePageContainer(
                    color: homepgContainColor,
                    homepgContainerChild: HomepgIconContent(
                      icon: FontAwesomeIcons.syringe,
                      homepgLabel: "Book Test",
                    ),
                  ),
                ),
                Expanded(
                  child: HomePageContainer(
                    color: homepgContainColor,
                    homepgContainerChild: HomepgIconContent(
                      icon: FontAwesomeIcons.stethoscope,
                      homepgLabel: "Consultation",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: HomePageContainer(
                    color: homepgContainColor,
                    homepgContainerChild: HomepgIconContent(
                      icon: FontAwesomeIcons.capsules,
                      homepgLabel: "Pharmacy Order",
                    ),
                  ),
                ),
                Expanded(
                  child: HomePageContainer(
                    color: homepgContainColor,
                    homepgContainerChild: HomepgIconContent(
                      icon: FontAwesomeIcons.chartBar,
                      homepgLabel: "Statictics",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


