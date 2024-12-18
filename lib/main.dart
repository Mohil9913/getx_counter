import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/other.dart';
import 'home.dart';

void main() => runApp(
      GetMaterialApp(

        getPages: [GetPage(name: '/other', page: () => Other())],

        home: Home(),
      ),
    );
