import 'package:bottom_navigation_bar_getx/app/modules/home/controllers/history_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HistoryView extends GetView<HistoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HistoryView'),
        centerTitle: true,
        actions: [
          Obx(
            () {
              return Center(
                child: Text(
                  '${controller.count.value}',
                  style: TextStyle(fontSize: 20),
                ),
              );
            },
          )
        ],
      ),
      body: ListView.builder(
        controller: controller.hideButtonController,
        itemCount: controller.exercises.length,
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text('${controller.exercises[index]}'));
        },
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Obx(
        () => controller.isVisible.value
            ? FloatingActionButton.small(
                onPressed: () {
                  controller.increment();
                },
                child: Text(' + '))
            : Container(),
      ),
    );
  }
}
