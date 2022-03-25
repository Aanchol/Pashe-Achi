import 'package:flutter/material.dart';
import 'package:pashe_achi/Pages/doctor_info_page.dart';

class DoctorConsultancyPage extends StatefulWidget {
  const DoctorConsultancyPage({Key? key}) : super(key: key);

  @override
  State<DoctorConsultancyPage> createState() => _DoctorConsultancyPageState();
}

class _DoctorConsultancyPageState extends State<DoctorConsultancyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //elevation: 0,
        backgroundColor: Colors.red.shade900,

        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
      ),
      body: Stack(
        children: [
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height,
          //   child: CustomPaint(
          //     painter: pathPainter(),
          //   ),
          // ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // AppBar(
                //   backgroundColor: Colors.transparent,
                //   elevation: 0,
                //   leading: Icon(
                //     Icons.arrow_back_ios,
                //     color: Colors.black,
                //     size: 30,
                //   ),
                //   actions: <Widget>[
                //     Container(
                //       height: 75,
                //       width: 75,
                //       decoration: BoxDecoration(
                //           shape: BoxShape.circle,
                //           gradient: LinearGradient(
                //               colors: [Color(0xff54D579), Color(0xff00AABF)],
                //               stops: [0,1]
                //           )
                //       ),
                //       child: Center(
                //         child: Text("C", style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 20,
                //           fontWeight: FontWeight.bold,
                //         ),),
                //       ),
                //     )
                //   ],
                // ),
                Padding(
                  padding: EdgeInsets.only(left: 14, right: 10, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Select a Doctor", style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/Doctors_consultation.png')),
                        ),

                      ),
                      Text("Chief Doctors", style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),),
                      SizedBox(height: 20,),
                      Container(
                        height: 400,
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              createDocWidget("female_doctor1.png", "Rokeya Sultana"),
                              createDocWidget("male_doctor1.png", "Paul Barbara"),
                              createDocWidget("female_doctor2.png", "Nancy Williams"),
                              createDocWidget("male_doctor2.png", "Susan Thomas"),
                              createDocWidget("male_doctor3.png", "Paul Barbara"),
                              createDocWidget("female_doctor3.png", "Nancy Williams"),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Container categoryContainer(String imgName, String title)
  {
    return Container(
      width: 130,
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/category/$imgName'),
          Text(
            "$title", style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 17
          ),
          )
        ],
      ),
    );
  }
  Container createDocWidget(String imgName, String docName)
  {
    return Container(

      child: InkWell(
        child: Container(

          margin: EdgeInsets.only(bottom: 15),
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
              children: <Widget>[
                Container(
                  width: 70,
                  height: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/$imgName'),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Dr. $docName", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(height: 5,),
                    Container(
                      width: 200,
                      height: 50,
                      child: Text("A brief about the doctor to be added here. This is more like an introduction about the doctor", style: TextStyle(
                        fontSize: 12,
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
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return DoctorInfoPage();
              }));
        },
      ),
    );
  }
}

// class pathPainter extends CustomPainter
// {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = new Paint();
//     paint.color = Color(0xffcef4e8);
//
//     Path path = new Path();
//     path.moveTo(0, 0);
//     path.lineTo(size.width*0.3, 0);
//     path.quadraticBezierTo(size.width*0.5, size.height*0.03, size.width*0.42, size.height*0.17);
//     path.quadraticBezierTo(size.width*0.35, size.height*0.32, 0, size.height*0.29);
//     path.close();
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//
//     return true;
//   }
//
// }


