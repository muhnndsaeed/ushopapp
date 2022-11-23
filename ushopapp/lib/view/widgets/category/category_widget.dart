import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ushopapp/logic/controller/category_controller.dart';
import 'package:ushopapp/view/widgets/category/category-items.dart';
import 'package:ushopapp/view/widgets/text_utils.dart';

import '../../../utils/theme.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key});

  final controller = Get.find<CategoryController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isCategoryLoading.value) {
        return Center(
          child: CircularProgressIndicator(
            color: Get.isDarkMode ? pinkClr : mainColor,
          ),
        );
      } else {
        return Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    controller.getCategoryIndex(index);
                    Get.to(() => CategoryItems(
                          categoryTitle: controller.categoryNameList[index],
                        ));
                  },
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(controller.imageCategory[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 10),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          controller.categoryNameList[index],
                          style: const TextStyle(
                              backgroundColor: Colors.black26,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 4,
                );
              },
              itemCount: controller.categoryNameList.length),
        );
      }
    });
  }
}
