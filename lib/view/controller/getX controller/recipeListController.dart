import 'dart:developer';

import 'package:get/get.dart';
import 'package:homemade_haven/view/controller/api_controller/RecipeListService.dart';
import 'package:homemade_haven/view/model/recipeListModel.dart';


class HomeController extends GetxController {
  List<Recipes> finalRecipeList = [];
  List<Recipes> recipeList = [];
  RxList<Recipes> favoriteRecipeList = <Recipes>[].obs;
  RxBool isLoading = false.obs;
  getProduct() async {
    finalRecipeList= await RecipeListService.recipeListService();
    isLoading.value = true;
    recipeList.addAll(finalRecipeList);
    log("=============finalProductList 1: ${finalRecipeList.length}");
    log("=============finalProductList 2: ${finalRecipeList.length}");
    log("=============productList 1: ${recipeList.length}");
    isLoading.value = false;
  }

  searchFunction({required String searchText}) async {
    isLoading.value = true;
    log("-------------- $searchText");
    recipeList = finalRecipeList
        .where((value) =>
    value.title!.toLowerCase().contains(searchText.toLowerCase())  ||
        value.country.toString().contains(searchText))
        .toList();
    log("=================Data : ${recipeList.length}");
    isLoading.value = false;
  }

  @override
  void onInit() {
    getProduct();

    super.onInit();
  }
}