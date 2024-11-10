import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homemade_haven/view/common_widget/CommonIcon.dart';
import 'package:homemade_haven/view/common_widget/common_button.dart';
import 'package:homemade_haven/view/controller/getX%20controller/logout.dart';
import 'package:homemade_haven/view/screen/notification/notification.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    LogOutService controller = Get.put(LogOutService());
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 120,
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  color: const Color(0xffa1447d),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          height: 100,
                          width: 100,
                          child:
                              Card(child: Image.asset("images/Shovonpic.jpg"))),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Name:Md Shimanto Mostofa",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: "Email:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                                text: "Shovon@gmail.com",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15))
                          ])),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: "Phone:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                                text: "01643770017",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15))
                          ])),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: "Address:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                                text: "Bheramara,Kushtia",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15))
                          ]))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CommonButton(
                  buttonName: "Setting",
                  onTap: () {

                  }),
              CommonButton(
                  buttonName: "Support",
                  onTap: () {

                  }),
              CommonButton(
                  buttonName: "FAQ",
                  onTap: () {
                    Get.to(page)
                  }),
              CommonButton(
                  buttonName: "LogOut",
                  onTap: () {
                    controller.logOutFun();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
