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
      ),
      body: Obx(
        () {
          return Center(
            child: Text(
              'HistoryView is working ${controller.count.value}',
              style: TextStyle(fontSize: 20),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.small(
          onPressed: () {
            controller.increment();
          },
          child: Text(' + ')),
    );
  }
}
