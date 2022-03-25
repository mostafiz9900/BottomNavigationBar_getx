
import 'package:bottom_navigation_bar_getx/app/modules/home/bindings/home_binding.dart';
import 'package:bottom_navigation_bar_getx/app/modules/home/views/browes_view.dart';
import 'package:bottom_navigation_bar_getx/app/modules/home/views/history_view.dart';
import 'package:bottom_navigation_bar_getx/app/modules/home/views/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
static HomeController get to => Get.find();

  var currentIndex = 0.obs;

  final pages = <String>['/browse', '/history', '/settings'];

  void changePage(int index) {
    currentIndex.value = index;
    Get.offAndToNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/browse')
      return GetPageRoute(
        settings: settings,
        page: () => BrowesView(),
        binding: HomeBinding(),
      );

    if (settings.name == '/history')
      return GetPageRoute(
        settings: settings,
        page: () => HistoryView(),
        binding: HomeBinding(),
      );

    if (settings.name == '/settings')
      return GetPageRoute(
        settings: settings,
        page: () => SettingView(),
        binding: HomeBinding(),
      );

    return null;
  }
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
