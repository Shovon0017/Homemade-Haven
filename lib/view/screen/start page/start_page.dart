

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homemade_haven/view/common_widget/common_button.dart';
import 'package:homemade_haven/view/screen/language%20selection/language_selection.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:  const Color(0xffFFFFFF),
      body: Center(
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/recipe startpage.jpg"),
              const SizedBox(
                height: 200,
              ),
              CommonButton(buttonColor:const Color(0xff9a0000)
                  ,buttonName: "GET STARTED", onTap:(){
              Get.to(()=> LanguageSelection())  ;
              })
            ],
          ),
        ),
      ),
    );
  }
}
