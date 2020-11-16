import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controllerg.dart';

class HomePage extends StatelessWidget {
  final HomeControllerG controller = Get.find();

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
                  child: FlatButton(
                      onPressed: () => Get.toNamed(
                            '/details?type=foo',
                          ),
                      child: Text('Go to details')),
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
        actions: [
          Padding(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).backgroundColor,
                  radius: 10.0,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      controller.usernameAbbr.value,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ))
        ],
      ),
      body: buildContent(controller),
    );
  }
}
