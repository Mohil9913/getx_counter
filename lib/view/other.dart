import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/service/api_service.dart';

class Other extends StatelessWidget {
  const Other({super.key});

  @override
  Widget build(BuildContext context) {

    final ApiService apiService = Get.find();

    return Scaffold(
      body: Center(
        child: FutureBuilder<String>(future: apiService.fetchData(), builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return CupertinoActivityIndicator();
          }else if(snapshot.hasData){
            return Text(snapshot.data ?? 'Received Void');
          }else{
            return Text('Error!');
          }
        }),
      ),
    );
  }
}
