
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homemade_haven/view/common_widget/common_button.dart';
import 'package:homemade_haven/view/screen/auth/sign_in.dart';
class LanguageSelection extends StatelessWidget {
   LanguageSelection({super.key});
  var value=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:const Color(0xffcec4c3),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 190,
                    width: 190,
                    child: Card(
                      color: Colors.red
                    ),
                  ),
                  SizedBox(
                    height: 190,
                    width: 190,
                    child: Card(
                        color: Colors.red
                    ),
                  )

                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 190,
                    width: 190,
                    child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset("images/us.webp"),
                              Text("English")
                            ],
                          ),
                        ),
                    ),
                  ),
                  SizedBox(
                    height: 190,
                    width: 190,
                    child: Card(
                        color: Colors.red
                    ),
                  )

                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 190,
                    width: 190,
                    child: Card(
                        color: Colors.red
                    ),
                  ),
                  SizedBox(
                    height: 190,
                    width: 190,
                    child: Card(
                        color: Colors.red
                    ),
                  )

                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}
