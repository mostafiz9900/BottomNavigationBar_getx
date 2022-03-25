import 'package:get/get.dart';

import 'package:bottom_navigation_bar_getx/app/modules/home/controllers/browes_controller.dart';
import 'package:bottom_navigation_bar_getx/app/modules/home/controllers/history_controller.dart';
import 'package:bottom_navigation_bar_getx/app/modules/home/controllers/setting_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BrowesController>(()=>BrowesController());
    Get.lazyPut<HistoryController>(
      () => HistoryController(),
    );
    Get.lazyPut<SettingController>(
      () => SettingController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
