import 'package:flutter/material.dart';
class DoctorInfoPage extends StatefulWidget {
  const DoctorInfoPage({Key? key}) : super(key: key);

  @override
  _DoctorInfoState createState() => _DoctorInfoState();
}

class _DoctorInfoState extends State<DoctorInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffBCFCF3), Color(0xff1EAE99)],
              begin: Alignment(0, -1.15),
              end: Alignment(0,0.1),
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
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
              height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Image.asset('assets/images/female_doctor1.png'),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/2.04,
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
                          SizedBox(width: 20,),
                          Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text("Dr. Rokeya Sultana", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),),
                              SizedBox(height: 10,),
                              Text("Medicine Doctor - Dhaka Medical Hospital", style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),)
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("About the Doctor", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),),
                            SizedBox(height: 10,),
                            Text("MBBS (DMC), BCS, DTCD (DU), FCCP (USA), Chest Medicine", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),),
                            SizedBox(height: 10,),
                            Text("Available Time Slots", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),),
                            SizedBox(height: 5,),
                            timeSlotWidget("25", "MAR", "Consultation", "Sunday 9 am to 11.30 am"),
                            timeSlotWidget("27", "MAR", "Consultation", "Monday 10 am to 12.30 am"),
                            timeSlotWidget("1", "APR", "Consultation", "Wednesday 8 am to 12.30 pm"),
                            timeSlotWidget("3", "APR", "Consultation", "Friday 8 am to 1 am"),
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
  }
  Container timeSlotWidget(String date, String month, String slotType, String time)
  {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xFFB71C1C),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xffD5E0FA),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$date", style: TextStyle(
                      color: Color(0xff3479C0),
                      fontSize: 30,
                      fontWeight: FontWeight.w800
                  ),),
                  Text("$month", style: TextStyle(
                      color: Color(0xff3479C0),
                      fontSize: 20,
                      fontWeight: FontWeight.w800
                  ),)
                ],
              ),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$slotType", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),),
                Text("$time", style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}


