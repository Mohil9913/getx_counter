import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'count_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final CountController c = Get.put(CountController());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Obx(
          () => Text('Click Count : ${c.count}'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: c.increment,
        child: Icon(
          CupertinoIcons.plus,
        ),
      ),
    );
  }
}