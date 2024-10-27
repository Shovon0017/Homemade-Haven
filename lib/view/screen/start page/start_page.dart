

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homemade_haven/view/common_widget/common_button.dart';
import 'package:homemade_haven/view/screen/language%20selection/language_selection.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:  const Color(0xff82410c),
      body: Center(
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/recipe startpage.jpg"),
              SizedBox(
                height: 50,
              ),
              CommonButton(
                buttonColor: Colors.white,
                  buttonName: "GET START",textColor: Colors.black, onTap:(){
              Get.to(()=> LanguageSelection())  ;
              })
            ],
          ),
        ),
      ),
    );
  }
}
