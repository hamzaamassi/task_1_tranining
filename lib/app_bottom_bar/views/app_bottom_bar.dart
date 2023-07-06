import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task_1/app_bottom_bar/controllers/app_bottom_bar_controller.dart';
import 'package:task_1/app_bottom_bar/views/bottom_app_bar_item.dart';
import 'package:task_1/cart_item/cart_item_page.dart';
import 'package:task_1/home/controllers/home_controller.dart';
import 'package:task_1/home/home.dart';
import 'package:task_1/profile/profile_page.dart';

class AppBottomBar extends StatelessWidget {
  final AppBottomBarController controller = Get.find();
  final HomeController controllerHome = Get.put(HomeController());

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List _pages = [
    const HomePage(),
    const CartItemPage(),
    const ProfilePage(),
  ];

  AppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        key: _scaffoldKey,
        backgroundColor: const Color(0XFF333742),
        drawer: const Drawer(),
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => _scaffoldKey.currentState?.openDrawer(),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
                height: 8,
                width: 8,
              ),
            ),
          ),
          actions: [
            GestureDetector(
                onTap: () =>
                    Get.snackbar("Notification", "Notification message"),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: SvgPicture.asset(
                    'assets/icons/notification.svg',
                    width: 24,
                    height: 24,
                  ),
                ))
          ],
          backgroundColor: const Color(0XFF333742),
        ),
        // key: controller.scaffoldState,
        body: _pages[controller.selectedIndex.value],
        bottomNavigationBar: controllerHome.initialIndex.value == 0
            ? buildBottomNavigationBar(context)
            : null,
      ),
    );
  }

  buildBottomNavigationBar(BuildContext context) {
    return Container(
      height: 56,
      decoration: const BoxDecoration(
          color: Color(0XFF454D5A),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomAppBarItem(
            svgAsset: 'assets/icons/home.svg',
            title: controller.selectedIndex.value == 0 ? ' Home' : null,
            isSelected: controller.selectedIndex.value == 0,
            onPressed: () => controller.onTapNavFunction(0),
          ),
          BottomAppBarItem(
            svgAsset: 'assets/icons/car.svg',
            title: controller.selectedIndex.value == 1 ? ' Cart' : null,
            isSelected: controller.selectedIndex.value == 1,
            onPressed: () => controller.onTapNavFunction(1),
          ),
          BottomAppBarItem(
            svgAsset: 'assets/icons/profile.svg',
            title: controller.selectedIndex.value == 2 ? ' Profile' : null,
            isSelected: controller.selectedIndex.value == 2,
            onPressed: () => controller.onTapNavFunction(2),
          ),
        ],
      ),
    );
  }
}
