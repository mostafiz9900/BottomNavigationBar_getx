import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController {

  final List<String> exercises = [
    "Push Ups",
    "Bench press",
    "Pull ups",
    "Press ups",
    "Crunches",
    "Sit ups",
    "BIceps curl",
    "Something else",
    "Push Ups",
    "Bench press",
    "Pull ups",
    "Press ups",
    "Crunches",
    "Sit ups",
    "BIceps curl",
    "Something else",
    "Push Ups",
    "Bench press",
    "Pull ups",
    "Press ups",
    "Crunches",
    "Sit ups",
    "BIceps curl",
    "Something else",
    "Push Ups",
    "Bench press",
    "Pull ups",
    "Press ups",
    "Crunches",
    "Sit ups",
    "BIceps curl",
    "Something else",
    "Push Ups",
    "Bench press",
    "Pull ups",
    "Press ups",
    "Crunches",
    "Sit ups",
    "BIceps curl",
    "Something else",
  ];

  ScrollController? hideButtonController;

  var isVisible = true.obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
     isVisible.value = true;
    hideButtonController = new ScrollController();
    hideButtonController!.addListener(() {
      print("listener");
      if (hideButtonController!.position.userScrollDirection ==
          ScrollDirection.reverse) {
       
          isVisible.value = false;
          print("**** ${isVisible.value} up");
      
      }
      if (hideButtonController!.position.userScrollDirection ==
          ScrollDirection.forward) {
       
          isVisible.value = true;
          print("**** ${isVisible.value} down");
       
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
