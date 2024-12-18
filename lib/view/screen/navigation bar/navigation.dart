
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homemade_haven/view/controller/getX%20controller/navigator_controller.dart';
class NavigationBarShow extends StatelessWidget {
  const NavigationBarShow({super.key});
  @override
  Widget build(BuildContext context) {
    final BottomNavBarController controller = Get.put(BottomNavBarController());
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(controller.bottomBarPages.length,
                (index) => controller.bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar:
      (controller.bottomBarPages.length <= controller.maxCount.value)
          ? AnimatedNotchBottomBar(
        notchBottomBarController: controller.nController,
        color: const Color(0xffa1447d),
        showLabel: true,
        textOverflow: TextOverflow.visible,
        maxLine: 1,
        shadowElevation:10,
        kBottomRadius: 28.0,
        notchColor: const Color(0xffFFFFFF),
        removeMargins: false,
        bottomBarHeight: 80,
        bottomBarWidth: 500,
        showShadow: true,
        durationInMilliSeconds: 300,
        itemLabelStyle:
        const TextStyle(fontSize: 20, color: Colors.white),
        elevation: 1,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.home_outlined,
              color:Color(0xffa1447d),

            ),
            itemLabel: 'Home',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.thumb_up_alt_rounded,
              color: Colors.white,

            ),
            activeItem: Icon(
              Icons.thumb_up_alt_rounded,
              color: Color(0xffa1447d),
            ),
            itemLabel: 'Liked',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.person,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.person,
              color:Color(0xffa1447d),
            ),
            itemLabel: 'Profile',
          ),
        ],
        onTap: (index) {
          controller.pageController.jumpToPage(index);
        },
        kIconSize: 20,
      )
          : null,
    );
  }
}