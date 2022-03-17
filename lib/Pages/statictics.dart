import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pashe_achi/Provider/pashe_achi_provider.dart';
import 'package:provider/provider.dart';

class Statictics extends StatefulWidget {
  const Statictics({Key? key}) : super(key: key);

  @override
  _StaticticsState createState() => _StaticticsState();
}

class _StaticticsState extends State<Statictics> {
  @override
  void initState() {
    super.initState();

  }
  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    PasheAchiProvider pasheAchiProvider = Provider.of<PasheAchiProvider>(context, listen:false);
    await pasheAchiProvider.getCovidInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PasheAchiProvider>(builder: (_, provider, ___) {
      return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          //elevation: 0,
          backgroundColor: Colors.red.shade900,
          title: Text("Statictics"),
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
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [

                 Column(
                    children: [
                      Text("World-Wide",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      provider.status == "success" ?Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      infoCard(
                      color: Color(0xFF9bd7d5),
                      text1: "Deaths:",
                      totalNumber1: provider.covidInfo.deaths.toString(),
                      text2: "Today's Deaths:",
                      totalNumber2: provider.covidInfo.todayDeaths.toString(),

                        ),
                      infoCard(
                        color: Color(0xFF9bd7d5),
                          text1: "Cases:",
                          totalNumber1: provider.covidInfo.cases.toString(),
                          text2: "Today Cases:",
                          totalNumber2: provider.covidInfo.todayCases.toString(),
                      ),
                      infoCard(
                        color: Color(0xFF9bd7d5),
                        text1: "Recovered:",
                        totalNumber1: provider.covidInfo.recovered.toString(),
                        text2: "Today Recovered:",
                        totalNumber2: provider.covidInfo.todayRecovered.toString(),
                      ),
                      infoCard(
                        color: Color(0xFF9bd7d5),
                        text1: "Active:",
                        totalNumber1: provider.covidInfo.active.toString(),
                        text2: "Tests:",
                        totalNumber2: provider.covidInfo.tests.toString(),
                      ),
                    ],
                      ):Container(),
                 ],
                ),

            ],
          )),
        ),
      );
    });
  }

  Widget infoCard({color,text1,text2,totalNumber1,totalNumber2}) {
    return Container(
      height: 130,
      width: 370,

      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),

        color: color,
        boxShadow: [
          BoxShadow(color: Colors.black, blurRadius: 12.0),
        ],

      ),
      child: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(text1,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
              ),
              SizedBox(
                height: 5,
              ),
              Text(totalNumber1,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
              ),

            ],
          ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(text2,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                ),
                SizedBox(
                  height: 5,
                ),
                Text(totalNumber2,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                ),

              ],
            ),
        ],
        ),
      ),
    );
  }
}


