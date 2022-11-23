import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ushopapp/logic/controller/product_controllser.dart';
import 'package:ushopapp/utils/theme.dart';
import 'package:ushopapp/view/widgets/text_utils.dart';

import '../widgets/home/card_items.dart';
import '../widgets/home/search_text_form.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: Get.isDarkMode ? darkGreyClr : mainColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextUtils(
                      text: "Find Your",
                      fontsize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      underline: TextDecoration.none,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextUtils(
                      text: "INSPIRATION",
                      fontsize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      underline: TextDecoration.none,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SearchFormText(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextUtils(
                    text: "Categories",
                    fontsize: 20,
                    fontWeight: FontWeight.w500,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                    underline: TextDecoration.none),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CardItem(),
          ],
        ),
      ),
    );
  }
}
