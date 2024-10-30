import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:homemade_haven/view/database/recipeDetails.dart';
import 'package:homemade_haven/view/model/recipe_details_model.dart';
class RecipeDetailsService {
  static Future<RecipeDetailsModel?> recipeDetailsService({required String id}) async {
    try {
      RecipeDetailsModel descriptionModel = RecipeDetailsModel.fromJson(jsonDecode(jsonEncode(RecipeDetails.recipeDetails)));
      return descriptionModel;
    } catch (e) {
      debugPrint("Error : $e");
    }
    return null;
  }
}
