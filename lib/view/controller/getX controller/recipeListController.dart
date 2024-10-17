import 'dart:developer';

import 'package:get/get.dart';
import 'package:homemade_haven/view/controller/api_controller/RecipeListService.dart';
import 'package:homemade_haven/view/model/recipeListModel.dart';


class HomeController extends GetxController {
  List<Recipes> finalProductList = [];
  List<Recipes> productList = [];
  RxList<Recipes> cardProductList = <Recipes>[].obs;
  RxBool isLoading = false.obs;
  getProduct() async {
    finalProductList= await RecipeListService.recipeListService();
    isLoading.value = true;
    productList.addAll(finalProductList);
    log("=============finalProductList 1: ${finalProductList.length}");
    log("=============finalProductList 2: ${finalProductList.length}");
    log("=============productList 1: ${productList.length}");
    isLoading.value = false;
  }

  searchFunction({required String searchText}) async {
    isLoading.value = true;
    log("-------------- $searchText");
    productList = finalProductList
        .where((value) =>
    value.title!.toLowerCase().contains(searchText.toLowerCase())  ||
        value.country.toString().contains(searchText))
        .toList();
    log("=================Data : ${productList.length}");
    isLoading.value = false;
  }

  @override
  void onInit() {
    getProduct();

    super.onInit();
  }
}