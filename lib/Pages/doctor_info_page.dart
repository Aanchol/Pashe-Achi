import 'package:flutter/material.dart';
import 'package:pashe_achi/Pages/book_appointment.dart';
import 'package:pashe_achi/Pages/home_page.dart';
import 'package:pashe_achi/Provider/pashe_achi_provider.dart';
import 'package:pashe_achi/common_widget/timeslot_widget.dart';
import 'package:pashe_achi/utils/constants.dart';
import 'package:provider/provider.dart';

class DoctorInfoPage extends StatefulWidget {
  const DoctorInfoPage({Key? key}) : super(key: key);

  @override
  _DoctorInfoState createState() => _DoctorInfoState();
}

class _DoctorInfoState extends State<DoctorInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PasheAchiProvider>(builder: (_, provider, ___) {
      return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xffBCFCF3), Color(0xff1EAE99)],
            begin: Alignment(0, -1.15),
            end: Alignment(0, 0.1),
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/images/female_doctor1.png'),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.69,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Color(0xffF9F9F9),
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            // Container(
                            //   height: 100,
                            //   width: 100,
                            //   //child: Image.asset('assets/images/.png'),
                            // ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Dr. Rokeya Sultana",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "About the Doctor",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "MBBS (DMC), BCS, DTCD (DU), FCCP (USA), Chest Medicine",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Available Time Slots",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),

                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: provider.consultationList.consultationTimeList.length,
                                itemBuilder: (context, index) => TimeSlotWidget(
                                    consultationInfo: provider.consultationList.consultationTimeList[index]),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      );
    });
  }
}
