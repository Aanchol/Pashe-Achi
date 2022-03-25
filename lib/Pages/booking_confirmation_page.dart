import 'package:flutter/material.dart';
import 'package:pashe_achi/Provider/pashe_achi_provider.dart';
import 'package:pashe_achi/common_widget/timeslot_widget.dart';
import 'package:pashe_achi/utils/constants.dart';
import 'package:provider/provider.dart';

class BookingConfirmation extends StatefulWidget {
  const BookingConfirmation({Key? key}) : super(key: key);

  @override
  _BookingConfirmationState createState() => _BookingConfirmationState();
}

class _BookingConfirmationState extends State<BookingConfirmation> {
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
                child: Container(
                  //height: 200,
                  //width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter:
                        ColorFilter.mode(Colors.black.withOpacity(0.4),
                            BlendMode.dstATop),
                        image: AssetImage("assets/images/background1.jpg"),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 200),
                      ),
                      Container(
                        height: 200,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                            color: Color(0xFF9bd7d5),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(7),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      provider.name,
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      provider.contactNo,
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      width: 200,
                                      height: 70,
                                      child: Text(
                                        "Your booked have confirmed ",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        overflow: TextOverflow.clip,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
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
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
