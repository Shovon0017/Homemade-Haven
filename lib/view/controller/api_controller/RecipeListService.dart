
import 'dart:convert';
import 'dart:developer';

import 'package:homemade_haven/view/database/recipeList.dart';
import 'package:homemade_haven/view/model/recipeListModel.dart';

class RecipeListService{
  static Future<List<Recipes>> recipeListService()async{
    log("+++++++++");
    try{
     RecipeListModel allRecipe=RecipeListModel.fromJson(jsonDecode(jsonEncode(RecipeList.recipeList)));
      log("${allRecipe.recipes}");
      return allRecipe.recipes??[];
    }
    catch(e){
      log("error:$e");
    }
    return[];

  }
}