import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pashe_achi/models/consultation_info.dart';
import 'package:pashe_achi/models/consultation_list.dart';
import 'package:pashe_achi/models/covid_info.dart';
import 'package:pashe_achi/models/product.dart';
import 'package:pashe_achi/models/product_list.dart';
import 'package:pashe_achi/repository/pashe_achi_repository.dart';

class PasheAchiProvider with ChangeNotifier{
   bool _showSpinner= false;
   CovidInfo? _covidInfo;
   String? _status ="loading";
   final ProductList? _productList = ProductList();
   List<Product> _addToCartList = [];
   final ConsultationList? _consultationList = ConsultationList();
   List<ConsultationInfo> _addToTimeList = [];
   String? _name ;
   String? _contactNo;


   List<ConsultationInfo> get addToTimeList => _addToTimeList;

  set addToTimeList(List<ConsultationInfo> value) {
    _addToTimeList = value;
  }

  ConsultationList get consultationList => _consultationList!;

  List<Product> get addToCartList => _addToCartList;

  set addToCartList(List<Product> value) {
    _addToCartList = value;
    notifyListeners();
  }


  ProductList get productList => _productList!;



  Future<String> getCovidInfo() async {
      Response response =
      await PasheAchiRepository().getCovidInfo();
        if(response.statusCode == 200){
        _covidInfo = CovidInfo.fromJson(response.data);
        status = "success";
        notifyListeners();
        }
        return status;

     }




   CovidInfo get covidInfo => _covidInfo!;

  String get status => _status!;

  set status(String value) {
    _status = value;
  }

   bool get showSpinner => _showSpinner;

   set showSpinner(bool value) {
     _showSpinner = value;
     notifyListeners();
   }

   String get contactNo => _contactNo!;

  set contactNo(String value) {
    _contactNo = value;
  }

  String get name => _name!;

  set name(String value) {
    _name = value;
  }
}

