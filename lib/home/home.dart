// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_1/home/controllers/home_controller.dart';
import 'package:task_1/product/products_category.dart';
import 'package:task_1/product/ps5_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = Get.find();
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    controller.initialIndex.value;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: const Color(0XFF333742),
        appBar: controller.initialIndex.value == 0
            ? AppBar(
                title: const Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: const Color(0XFF333742),
              )
            : null,
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Center(
                child: TabBar(
                  onTap: (index) => _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  ),
                  physics: const BouncingScrollPhysics(),
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  indicator: UnderlineTabIndicator(
                      borderRadius: BorderRadius.circular(100),
                      insets: const EdgeInsets.symmetric(horizontal: 30.0)),
                  unselectedLabelColor: Colors.white.withOpacity(.5),
                  labelStyle: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500),
                  unselectedLabelStyle: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500),
                  tabs: const [
                    Tab(child: Text('All')),
                    Tab(child: Text('PS5')),
                    Tab(child: Text('PS4')),
                    Tab(child: Text('Xbox one')),
                    Tab(child: Text('Xbox two')),
                    Tab(child: Text('Xbox three')),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    controller.initialIndex.value = index;
                  });
                },
                children: const [
                  ProductsCategory(),
                  GridProductPage(),
                  Center(
                    child: Text(
                      "PS4",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Xbox 1",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Xbox 2",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Xbox 3",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
