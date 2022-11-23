import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController {
  final GetStorage boxStorage = GetStorage();

  final key = 'isDarkModes';

  saveThemeDataInBox(bool isDark) {
    boxStorage.write(key, isDark);
  }

  bool getThemeDataFrombox() {
    return boxStorage.read<bool>(key) ?? false;
  }

  ThemeMode get themeDataGet =>
      getThemeDataFrombox() ? ThemeMode.dark : ThemeMode.light;

  void changesTheme() {
    Get.changeThemeMode(
        getThemeDataFrombox() ? ThemeMode.light : ThemeMode.dark);
    saveThemeDataInBox(!getThemeDataFrombox());
  }
}
