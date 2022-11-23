import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ushopapp/utils/theme.dart';
import 'package:ushopapp/view/widgets/text_utils.dart';

import '../widgets/setting/dark_mode_widget.dart';
import '../widgets/setting/language_widget.dart';
import '../widgets/setting/logout_widget.dart';
import '../widgets/setting/profile_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          ProfileWidget(),
          const SizedBox(
            height: 10,
          ),
          Divider(
            color: Get.isDarkMode ? Colors.white : Colors.grey,
            thickness: 2,
          ),
          const SizedBox(
            height: 20,
          ),
          TextUtils(
            text: 'GENERAL'.tr,
            fontsize: 18,
            fontWeight: FontWeight.bold,
            color: Get.isDarkMode ? pinkClr : mainColor,
            underline: TextDecoration.none,
          ),
          const SizedBox(
            height: 20,
          ),
          DarkModeWidget(),
          const SizedBox(
            height: 20,
          ),
          LanguageWidget(),
          const SizedBox(
            height: 20,
          ),
          LogOutWidget(),
        ],
      ),
    );
  }
}
