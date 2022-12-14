import 'package:get/get.dart';
import 'package:ushopapp/logic/controller/main_controller.dart';
import 'package:ushopapp/logic/controller/settings_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(SettingController());
  }
}
