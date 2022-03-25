import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pashe_achi/Pages/doctor_consultancy_screen.dart';
import 'package:pashe_achi/Pages/drawer_page.dart';
import 'package:pashe_achi/Pages/pharmacy_order.dart';
import 'package:pashe_achi/Pages/statictics.dart';
import 'package:pashe_achi/common_widget/homepage_container.dart';
import 'package:pashe_achi/common_widget/homepg_iconcontent.dart';
import 'package:pashe_achi/common_widget/search_field.dart';
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
      drawer: DrawerPage(),
      appBar: AppBar(
        title: Text('Pashe Achi'),
        centerTitle: true,
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
                    color: kSecondarycolor,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, blurRadius: 12.0),
                    ],
                  ),
                  padding: EdgeInsets.all(30.0),

                   child: Container(
                        child: Image.asset("assets/images/homepage.jpg"),
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
                    color: kPrimarycolor,
                    homepgContainerChild: HomepgIconContent(
                      icon: FontAwesomeIcons.syringe,
                      homepgLabel: "Book Test",
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                      child: HomePageContainer(
                        color: kPrimarycolor,
                        homepgContainerChild: HomepgIconContent(
                          icon: FontAwesomeIcons.stethoscope,
                          homepgLabel: "Consultation",
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DoctorConsultancyPage();
                        }));
                      }),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    child: HomePageContainer(
                      color: kPrimarycolor,
                      homepgContainerChild: HomepgIconContent(
                        icon: FontAwesomeIcons.capsules,
                        homepgLabel: "Pharmacy Order",
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PharmacyPage();
                      }));
                    },
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: HomePageContainer(
                      color: kPrimarycolor,
                      homepgContainerChild: HomepgIconContent(
                        icon: FontAwesomeIcons.chartBar,
                        homepgLabel: "Statictics",
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Statictics();
                      }));
                    },
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
