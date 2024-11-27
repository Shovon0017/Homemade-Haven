import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homemade_haven/view/common_widget/CommonIcon.dart';
import 'package:homemade_haven/view/common_widget/custom_order_shimmer_loading.dart';
import 'package:homemade_haven/view/controller/getX%20controller/recipe_Info.dart';
import 'package:homemade_haven/view/screen/liked/widget/no_cart_data_found.dart';
import 'package:homemade_haven/view/screen/notification/notification.dart';
import 'package:homemade_haven/view/screen/recipe_details/recipe_details.dart';
class Liked extends StatelessWidget {
  const Liked({super.key});

  @override
  Widget build(BuildContext context) {
    RecipeDetailsController cartController=Get.put(RecipeDetailsController());
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        title: SizedBox(
            height: 40, width: 150, child: Image.asset("images/appbar_recipe_logo.png")),
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
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Obx(
                () => cartController.isLoading.isTrue
                ? const CustomOrderShimmer()
                : cartController.liked.isEmpty
                ? const NoCartProductFoundWidget()
                : Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        RichText(
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: "Total Item :",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ])),
                        Obx(
                              () => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10),
                            child: Text(
                                "${cartController.liked.length}"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: size.height / 1.8,
                  child: Obx(
                        () => ListView.builder(
                        padding: const EdgeInsets.only(bottom: 10),
                        shrinkWrap: true,
                        itemCount: cartController.liked.length,
                        itemBuilder: (_, index) {
                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            surfaceTintColor: Colors.transparent,
                            shape: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.withOpacity(.3), strokeAlign: BorderSide.strokeAlignOutside),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                    height: 80,
                                    width:80,child: Image.asset("${cartController.liked[index].image}")),

                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Recipe Name:${cartController.liked[index].title}",style: TextStyle(fontSize: 15,overflow: TextOverflow.ellipsis),),
                                        Text(
                                          "Country:${cartController.liked[index].country} ",style: TextStyle(
                                          fontSize: 12,
                                        ),

                                        ),
                                        Row(
                                          children: [
                                            const Spacer(),
                                            InkWell(
                                              onTap: () async {
                                                cartController.liked.removeAt(index);
                                              },
                                              child: const Icon(Icons.delete_forever, color: Colors.red),
                                            ),
                                            const SizedBox(width: 10)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
