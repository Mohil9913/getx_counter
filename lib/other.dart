import 'package:flutter/material.dart';
import 'package:getx_counter/count_controller.dart';
import 'package:get/get.dart';

class Other extends StatelessWidget {
  const Other({super.key});

  @override
  Widget build(BuildContext context) {
    final CountController c = Get.find();
    return Scaffold(
      body: Center(
        child: Text(
          '${c.count}',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
