import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ushopapp/utils/theme.dart';
import 'package:ushopapp/view/widgets/text_utils.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const AuthButton({required this.text, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: TextUtils(
        text: text,
        fontsize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        underline: TextDecoration.none,
      ),
      style: ElevatedButton.styleFrom(
        primary: Get.isDarkMode ? pinkClr : mainColor,
        minimumSize: const Size(360, 50),
      ),
    );
  }
}
