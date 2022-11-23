import 'package:get/get.dart';
import 'package:ushopapp/logic/controller/cart_controller.dart';
import 'package:ushopapp/logic/controller/category_controller.dart';
import 'package:ushopapp/logic/controller/product_controllser.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
    Get.lazyPut(() => CartController());
    Get.put(CategoryController());
  }
}
