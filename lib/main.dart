import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/service/api_service.dart';
import 'package:getx_counter/view/other.dart';
import 'view/home.dart';

void main() {

  Get.lazyPut<ApiService>(() => ApiService());

  runApp(
    GetMaterialApp(
      getPages: [GetPage(name: '/other', page: () => Other())],
      home: Home(),
    ),
  );
}
