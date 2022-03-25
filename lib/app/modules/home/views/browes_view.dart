import 'package:bottom_navigation_bar_getx/app/modules/home/controllers/browes_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BrowesView extends GetView<BrowesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BrowesView'),
        centerTitle: true,
      ),
      body: Obx(() {
        return Center(
          child: Text(
            'BrowesView is working ${controller.count.value}',
            style: TextStyle(fontSize: 20),
          ),
        );
      }),
        floatingActionButton: FloatingActionButton.small(
          onPressed: () {
            controller.increment();
          },
          child: Text(' + ')),
    );
  }
}
