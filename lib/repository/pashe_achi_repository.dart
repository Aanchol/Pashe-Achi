
import 'package:dio/dio.dart';

const Duration duration = Duration(seconds: 5);

class PasheAchiRepository{
  Future<Response> getCovidInfo() async{

    Response response = await Dio().get(
        //"https://covid-19-coronavirus-statistics.p.rapidapi.com/v1/total",
         //"https://api.apify.com/v2/key-value-stores/SmuuI0oebnTWjRTUh/records/LATEST",
      // "https://api.apify.com/v2/key-value-stores/SmuuI0oebnTWjRTUh/records/LATEST?disableRedirect=true",
      "https://corona.lmao.ninja/v2/all",
        //  queryParameters: <String,dynamic>{
        //        "country": "Bangladesh",
        //    //"disableRedirect" : true,
        // },
      // options: Options(
      //     headers: <String,dynamic>{
      //       "x-rapidapi-host": "covid-19-coronavirus-statistics.p.rapidapi.com",
      //       "x-rapidapi-key" : "a1e0ad2ab5msha1ef19e2a1f38f2p1a2661jsnc3be16f657ff",
      //     }
      // ),
      // options: Options(
      //   headers: <String, dynamic>{
      //     "Host": "<calculated when request is sent>",
      //     "User-Agent": "PostmanRuntime/7.29.0",
      //     "Accept": "*/*",
      //     "Accept-Encoding": "gzip, deflate, br",
      //     "Connection":"keep-alive"
      //   }
      // )
    ).timeout(duration);
    print(response);
    return response;
  }
}