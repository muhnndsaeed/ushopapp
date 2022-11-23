import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ushopapp/model/product_models.dart';
import 'package:ushopapp/services/product_service.dart';

class ProductController extends GetxController {
  var productList = <ProductModels>[].obs;
  var favouritesList = <ProductModels>[].obs;
  var isLoading = true.obs;
  var storage = GetStorage();

  // Search
  var searchList = <ProductModels>[].obs;
  TextEditingController searchTextController = TextEditingController();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    List? storedShoppings = storage.read<List>('isFavouritesList');
    if (storedShoppings != null) {
      favouritesList =
          storedShoppings.map((e) => ProductModels.fromJson(e)).toList().obs;
    }
    getProducts();
  }

  void getProducts() async {
    var products = await ProductServices.getProduct();

    try {
      isLoading(true);
      if (products.isNotEmpty) {
        productList.addAll(products);
      }
    } finally {
      isLoading(false);
    }
  }

  // Logic for Favorites Screen

  void manageFavourites(int productId) async {
    var existingIndex =
        favouritesList.indexWhere((element) => element.id == productId);
    await storage.remove('isFavouritesList');
    if (existingIndex >= 0) {
      favouritesList.removeAt(existingIndex);
    } else {
      favouritesList
          .add(productList.firstWhere((element) => element.id == productId));
      await storage.write('isFavouritesList', favouritesList);
    }
  }

  bool isFavourites(int productId) {
    return favouritesList.any((element) => element.id == productId);
  }

  // Search bar logic

  void addSearchToList(String searchName) {
    searchName = searchName.toLowerCase();
    searchList.value = productList.where((search) {
      var searchTitle = search.title.toLowerCase();
      var searchPrice = search.price.toString().toLowerCase();
      return searchTitle.contains(searchName) ||
          searchPrice.toString().contains(searchName);
    }).toList();
    update();
  }

  void clearSearch() {
    searchTextController.clear();
    addSearchToList("");
  }
}
