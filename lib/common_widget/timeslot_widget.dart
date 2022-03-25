import 'package:flutter/material.dart';
import 'package:pashe_achi/Pages/book_appointment.dart';
import 'package:pashe_achi/Provider/pashe_achi_provider.dart';
import 'package:pashe_achi/models/consultation_info.dart';
import 'package:provider/provider.dart';


class TimeSlotWidget extends StatelessWidget {

  final ConsultationInfo? consultationInfo;


  TimeSlotWidget({@required this.consultationInfo});


  @override
  Widget build(BuildContext context) {
    return Consumer<PasheAchiProvider>(

      builder: (_,provider,___) {
        return InkWell(
                onTap: (){
                 provider.addToTimeList.add(consultationInfo!);
                Navigator.push(context,MaterialPageRoute(builder: (context){
                       return BookAppointment();
                }));
                },
                child: Container(
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
                              Text(consultationInfo!.date, style: TextStyle(
                                  color: Color(0xff3479C0),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800
                              ),),
                              Text(consultationInfo!.month, style: TextStyle(
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
                            Text(consultationInfo!.slot, style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),),
                            Text(consultationInfo!.time, style: TextStyle(
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
              );
      }
    );

  }
}

