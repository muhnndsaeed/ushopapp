import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ushopapp/utils/theme.dart';
import 'package:ushopapp/view/widgets/text_utils.dart';

class ContainerUnder extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final String textType;
  const ContainerUnder(
      {required this.text,
      required this.onPressed,
      required this.textType,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Get.isDarkMode ? pinkClr : mainColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextUtils(
            text: text,
            fontsize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            underline: TextDecoration.none,
          ),
          TextButton(
            onPressed: onPressed,
            child: TextUtils(
              text: textType,
              fontsize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              underline: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
