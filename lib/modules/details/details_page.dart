import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'details_controllerg.dart';

class DetailsPage extends StatelessWidget {
  final DetailsControllerG controller = Get.find();

  Obx buildContent(controller) {
    return Obx(() {
      if (controller.clientsData.isEmpty) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }

      return RefreshIndicator(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 60.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text('TA-DAH!'),
                )
              ],
            ),
          ),
          onRefresh: () {
            return Future.delayed(Duration(milliseconds: 800)).then((value) {
              return controller.getData();
            });
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() {
          return Text(controller.title.value);
        }),
        elevation: 0,
      ),
      body: buildContent(controller),
    );
  }
}
