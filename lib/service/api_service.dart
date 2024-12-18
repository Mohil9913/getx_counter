import 'package:get/get.dart';

class ApiService extends GetxService{

  Future<String> fetchData() async{
    await Future.delayed(const Duration(seconds: 4),);
    return 'This is data from API';
  }

}