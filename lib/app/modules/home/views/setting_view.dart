import 'package:bottom_navigation_bar_getx/app/modules/home/controllers/setting_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SettingView extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SettingView'),
        centerTitle: true,
      ),
      body: Obx(
        () => Center(
          child: Text(
            'SettingView is working ${controller.count.value}',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
          onPressed: () {
            controller.increment();
          },
          child: Text(' + ')),
    );
  }
}
