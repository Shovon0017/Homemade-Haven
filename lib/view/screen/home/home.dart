
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homemade_haven/view/common_widget/CommonIcon.dart';
import 'package:homemade_haven/view/common_widget/common_text.dart';
import 'package:homemade_haven/view/common_widget/search_field.dart';
import 'package:homemade_haven/view/controller/getX%20controller/recipeListController.dart';
import 'package:homemade_haven/view/screen/SliderAllProduct/SliderProduct.dart';
import 'package:homemade_haven/view/screen/notification/notification.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        leading: Icon(Icons.menu,size: 35,),
        title: SizedBox(
             width: 150, child: Image.asset("images/pcmart.jpg")),
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
            SizedBox(
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
            SizedBox(height: 10),
            Text("CATEGORY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Color(0xffa1447d))),
            CarouselSlider(
                items: [
                  InkWell(
                    onTap: () {
                      Get.to(()=>SliderProductScreen());
                    },
                    child: Container(
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('images/COMPUTER MONITORS.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  InkWell(
                    onTap: () {Get.to(()=>SliderProductScreen());},
                    child: Container(
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('images/PC ACCESSORIES (1).png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  InkWell(
                    onTap: () {Get.to(()=>SliderProductScreen());},
                    child: Container(
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/PC PARTS.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  )
                ],
                options: CarouselOptions(
                    height: 180,
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    enlargeCenterPage: true)),
            Text("ALL PRODUCT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Color(0xffa1447d))),
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
                                              height: 100,
                                              width: 100,
                                              child: Image(
                                                  image: AssetImage(
                                                      "${controller.recipeList[index].image}"))),
                                          CommonText(
                                              title:
                                                  "ID : ${controller.recipeList[index].id}"),
                                          CommonText(
                                              title:
                                                  "Name : ${controller.recipeList[index].title}"),
                                          CommonText(
                                              title:
                                                  "Country : ${controller.recipeList[index].country}"),
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
