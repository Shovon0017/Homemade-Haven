import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homemade_haven/view/screen/auth/sign_in.dart';

class LanguageSelection extends StatelessWidget {
  LanguageSelection({super.key});
  var value = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Select Language",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 190,
                  width: 190,
                  child: InkWell(
                    onTap: () {
                      Get.to(() => const SignIn());
                    },
                    child: Card(
                      color: const Color(0xffcec4c3),
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Image.asset("images/us.webp"),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "English",
                              style: TextStyle(fontSize: 25),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: 190,
                    width: 190,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const SignIn());
                      },
                      child: Card(
                        color: const Color(0xffcec4c3),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Image.asset("images/bangladesh.webp"),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Bengali",
                                style: TextStyle(fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: 190,
                    width: 190,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const SignIn());
                      },
                      child: Card(
                        color: const Color(0xffcec4c3),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Image.asset("images/india.png"),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Hindi",
                                style: TextStyle(fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 190,
                    width: 190,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const SignIn());
                      },
                      child: Card(
                        color: const Color(0xffcec4c3),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Image.asset("images/russia.png"),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Russian",
                                style: TextStyle(fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: 190,
                    width: 190,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const SignIn());
                      },
                      child: Card(
                        color: const Color(0xffcec4c3),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Image.asset("images/japan.png"),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Japanese",
                                style: TextStyle(fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 190,
                  width: 190,
                  child: InkWell(
                      onTap: () {
                        Get.to(() => const SignIn());
                      },
                      child: Card(
                        color: const Color(0xffcec4c3),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Image.asset("images/china.png"),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Chinese",
                                style: TextStyle(fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: 190,
                    width: 190,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const SignIn());
                      },
                      child: Card(
                        color: const Color(0xffcec4c3),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Image.asset("images/korea.webp"),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Korean",
                                style: TextStyle(fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                    height: 190,
                    width: 190,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const SignIn());
                      },
                      child: Card(
                        color: const Color(0xffcec4c3),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Image.asset("images/Flag-France.webp"),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "French",
                                style: TextStyle(fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
