
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:homemade_haven/view/controller/api_controller/product_description.dart';
import 'package:homemade_haven/view/model/recipeListModel.dart';

class RecipeDetailsController extends GetxController {
  RxInt selectedImgIndex = 0.obs;
  var detailsData = {}.obs;
  RxList<String> imageList = <String>[].obs;
  String id = "0";
  RxBool isLoading = false.obs;
  RxList<Recipes> liked = <Recipes>[].obs;
  final GetStorage storage = GetStorage();
  @override
  void onInit() {
    _loadCart();
    super.onInit();
  }
  void addToCart(Recipes recipes) {
    liked.add(recipes);
    _saveCart();
    Get.snackbar('Success', '${recipes.title} added to cart!');
  }

  void removeFromCart(Recipes recipes) {
    liked.remove(recipes);
    _saveCart();
    Get.snackbar('Removed', '${recipes.title} removed from cart!');
  }

  void _saveCart() {
    storage.write('cart', liked.map((product) => product.toJson()).toList());
  }

  void _loadCart() {
    var savedCart = storage.read('cart') ?? [];
    liked.value = List<Recipes>.from(savedCart.map((item) => Recipes.fromJson(item)));
  }
}
