
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homemade_haven/view/common_widget/common_button.dart';
import 'package:homemade_haven/view/screen/auth/sign_in.dart';
class LanguageSelection extends StatelessWidget {
   LanguageSelection({super.key});
  var value=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:const Color(0xffFFFFFF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/english select logo.png"),
              const SizedBox(height: 90),
              DropdownButtonFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                          borderSide:
                          const BorderSide(color: Colors.black))),
                  value: value,
                  items: const [
                    DropdownMenuItem(
                      value: -1,
                      child: Text("Choose Language"),
                    ),
                    DropdownMenuItem(
                        value: 0,
                        child: Text("English")),
                    DropdownMenuItem(
                        value: 1,
                        child: Text("Bengali")),
                    DropdownMenuItem(
                        value: 2,
                        child: Text("Chinese")),
                    DropdownMenuItem(
                        value: 2,
                        child: Text("Hindi")),
                    DropdownMenuItem(
                        value: 2,
                        child: Text("Japanese")),
                    DropdownMenuItem(
                        value: 2,
                        child: Text("Russian"))
                  ],
                  onChanged: (v) {}),
              CommonButton(buttonColor:const Color(0xffa1447d) ,
                  buttonName: "English", onTap: (){
                Get.to(()=>const SignIn(
                ));
              })
            ],
          ),
        ),
      ),
    );
  }
}
