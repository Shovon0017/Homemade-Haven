
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homemade_haven/view/common_widget/CommonIcon.dart';
import 'package:homemade_haven/view/common_widget/common_text.dart';
import 'package:homemade_haven/view/common_widget/search_field.dart';
import 'package:homemade_haven/view/controller/getX%20controller/recipeListController.dart';
import 'package:homemade_haven/view/screen/SliderAllProduct/SliderProduct.dart';
import 'package:homemade_haven/view/screen/notification/notification.dart';
import 'package:homemade_haven/view/screen/recipe_details/recipe_details.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        leading: const Icon(Icons.menu,size: 35,),
        title: SizedBox(
            height: 40,
            width: 150, child: Image.asset("images/appbar_recipe_logo.png")),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CommonIconButton(onTap: () {
              Get.to(() => const NotificationShow());
            }),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SearchField(
                onChanged: (String text) {
                  controller.searchFunction(searchText: text);
                },
              ),
            ),
            const SizedBox(height: 10),
            const Text("CATEGORY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Color(0xffa1447d))),
            CarouselSlider(
                items: [
                  InkWell(
                    onTap: () {
                      Get.to(()=>const SliderProductScreen());
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image:
                                  AssetImage('images/bangladeshi RECIPE.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  InkWell(
                    onTap: () {Get.to(()=>const SliderProductScreen());},
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image:
                                  AssetImage('images/french RECIPE.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  InkWell(
                    onTap: () {Get.to(()=>const SliderProductScreen());},
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('images/INDIAN RECIPE (1).png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  InkWell(
                    onTap: () {Get.to(()=>const SliderProductScreen());},
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('images/japanese RECIPE.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  InkWell(
                    onTap: () {Get.to(()=>const SliderProductScreen());},
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('images/RUSSIAN RECIPE.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  )
                ],
                options: CarouselOptions(
                    height: 180,
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    enlargeCenterPage: true)),
            const Text("ALL RECIPE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Color(0xffa1447d))),
            const SizedBox(height: 10),
            Obx(() => controller.isLoading.isTrue
                ? const Center(child: CircularProgressIndicator())
                : controller.recipeList.isEmpty
                    ? const Center(
                        child: CommonText(title: "Empty Product List"))
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            child: GridView.builder(
                              physics: const PageScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.recipeList.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                              ),
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Get.to(()=>RecipeDetails(id: 0, recipesData: controller.recipeList[index],));
                                  },
                                  child: Card(
                                    elevation: 4,
                                    color: Colors.white,
                                    child: SizedBox(
                                      height: 220,
                                      width:
                                          MediaQuery.sizeOf(context).width /
                                              2.2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              height: 130,
                                              width: 130,
                                              child: Image(
                                                  image: AssetImage(
                                                      "${controller.recipeList[index].image}"))),
                                          CommonText(
                                              title:
                                                  "Name : ${controller.recipeList[index].title}"),
                                          CommonText(
                                              title:
                                                  "Country : ${controller.recipeList[index].country}"),
                                          CommonText(
                                              title:
                                              "CookTime : ${controller.recipeList[index].cookTime}"),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      )),
          ],
        ),
      ),
    );
  }
}
