
import 'package:dio/dio.dart';

const Duration duration = Duration(seconds: 5);

class PasheAchiRepository{
  Future<Response> getCovidInfo() async{

    Response response = await Dio().get(
      "https://corona.lmao.ninja/v2/all",
    ).timeout(duration);
    print(response);
    return response;
  }
}