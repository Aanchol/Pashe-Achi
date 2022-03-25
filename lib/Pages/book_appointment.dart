import 'package:flutter/material.dart';
import 'package:pashe_achi/Pages/booking_confirmation_page.dart';
import 'package:pashe_achi/Provider/pashe_achi_provider.dart';
import 'package:pashe_achi/common_widget/timeslot_widget.dart';
import 'package:pashe_achi/models/consultation_info.dart';
import 'package:pashe_achi/utils/constants.dart';
import 'package:provider/provider.dart';

class BookAppointment extends StatefulWidget {


  @override
  _BookAppointmentState createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
 TextEditingController? _nameController;
 TextEditingController? _contactNoController;
 ConsultationInfo? consultationInfo;

 @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _contactNoController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PasheAchiProvider>(builder: (_, provider, ___) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimarycolor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              provider.addToTimeList.clear();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              color: Colors.grey[50],
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 15),
                                child: Text(
                                  'Patient Name*',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 32, right: 32),
                              child: TextField(
                                maxLines: 1,
                                controller: _nameController,
                                decoration: InputDecoration(
                                  hintText: '',
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffbcbcbc),
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff575757),
                                ),
                                showCursor: true,
                                //cursorColor: AppColors.qColorBlue,
                                cursorWidth: 1,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              color: Colors.grey[50],
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 15),
                                child: Text(
                                  'Contact No*',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 32, right: 32),
                              child: TextField(
                                maxLines: null,
                                controller: _contactNoController,
                                decoration: InputDecoration(
                                  hintText: '',
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffbcbcbc),
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff575757),
                                ),
                                showCursor: true,
                                //cursorColor: AppColors.qColorBlue,
                                cursorWidth: 1,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: provider.addToTimeList.length,
                              itemBuilder: (context, index) => Container(
                                margin: EdgeInsets.only(bottom: 10),
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width,
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
                                            Text(provider.addToTimeList[index].date, style: TextStyle(
                                                color: Color(0xff3479C0),
                                                fontSize: 30,
                                                fontWeight: FontWeight.w800
                                            ),),
                                            Text(provider.addToTimeList[index].month, style: TextStyle(
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
                                          Text(provider.addToTimeList[index].slot, style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white,
                                          ),),
                                          Text(provider.addToTimeList[index].time, style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25),
                child: InkWell(
                  onTap: () {

                    provider.name = _nameController!.text;
                    provider.contactNo = _contactNoController!.text;
                    provider.addToTimeList.add(consultationInfo!);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return BookingConfirmation();
                        }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        color: kPrimarycolor,
                        borderRadius: BorderRadius.circular(8)),
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Book Confirm'.toUpperCase(),
                        style: TextStyle(color: Colors.white),
                      ),
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
