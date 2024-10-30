
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:homemade_haven/view/controller/api_controller/product_description.dart';
import 'package:homemade_haven/view/model/recipeListModel.dart';

class RecipeDetailsController extends GetxController {
  RxInt selectedImgIndex = 0.obs;
  var detailsData = {}.obs;
  RxInt productQty = 1.obs;
  RxList<String> imageList = <String>[].obs;
  String id = "0";
  RxBool isLoading = false.obs;
  RxDouble productAmount = 0.00.obs;
  RxList<Recipes> liked = <Recipes>[].obs;
  final GetStorage storage = GetStorage();
  @override
  void onInit() {
    ProductInfoFun();
    _loadCart();
    super.onInit();
  }
  ProductInfoFun() async {
     await RecipeDetailsService.recipeDetailsService(id: id);

  }
  void addToCart(Recipes recipes) {
    liked.add(recipes);
    _saveCart();
    Get.snackbar('Success', '${recipes.title} Liked!');
  }

  void removeFromCart(Recipes recipes) {
    liked.remove(recipes);
    _saveCart();
    Get.snackbar('Removed', '${recipes.title} UnLiked!');
  }

  void _saveCart() {
    storage.write('liked', liked.map((product) => product.toJson()).toList());
  }

  void _loadCart() {
    var savedCart = storage.read('liked') ?? [];
    liked.value = List<Recipes>.from(savedCart.map((item) => Recipes.fromJson(item)));
  }
}
