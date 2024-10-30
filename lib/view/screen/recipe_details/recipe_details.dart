


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homemade_haven/view/common_widget/CommonIcon.dart';
import 'package:homemade_haven/view/common_widget/common_button.dart';
import 'package:homemade_haven/view/controller/getX%20controller/recipe_Info.dart';
import 'package:homemade_haven/view/model/recipeListModel.dart';
import 'package:homemade_haven/view/screen/notification/notification.dart';


class RecipeDetails extends StatelessWidget {
   RecipeDetails({super.key, required this.id, required this.recipesData});
  final int id;
  var value=-1;
   final Recipes recipesData;
  @override
  Widget build(BuildContext context) {
    RecipeDetailsController controller = Get.put(RecipeDetailsController());


    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        title: SizedBox(
            height: 40,
            width: 150, child: Image.asset("images/appbar_recipe_logo.png")),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CommonIconButton(onTap: (){
              Get.to(()=>const NotificationShow());
            }),
          )
        ],
      ),
      body:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: Column(
              children: [
                Container(
                  height: 230,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 230,
                        child: Image.asset("${recipesData.image}")
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
               Text("Recipe Name:${recipesData.title}"),
                const SizedBox(height: 10),
                Text("Country:${recipesData.country}"),
                const SizedBox(height: 10),
                Text("CookTime:${recipesData.cookTime}"),
                const SizedBox(height: 10),
                Text("PrepTime:${recipesData.prepTime}"),
                const SizedBox(height: 10),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border:const Border.fromBorderSide(BorderSide(color: Colors.black))),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("",style: TextStyle(fontSize: 16),),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CommonButton(
                      buttonWidth:150,
                        buttonName: "Like", onTap: ()async{
                      controller.addToCart(Recipes(title: recipesData.title,image: recipesData.image,country: recipesData.country));
                    })
                  ],
                )
              ],
            ),
          ),
    );
  }
}