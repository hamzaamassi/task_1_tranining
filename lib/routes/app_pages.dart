// ignore_for_file: constant_identifier_names
import 'package:get/get.dart';
import 'package:task_1/app_bottom_bar/app_bottom_bar_binding.dart';
import 'package:task_1/app_bottom_bar/views/app_bottom_bar.dart';
import 'package:task_1/cart_item/cart_item_page.dart';
import 'package:task_1/home/home.dart';
import 'package:task_1/product/Product_details.dart';
import 'package:task_1/product/product_favored.dart';
import 'package:task_1/product/products_category.dart';
import 'package:task_1/profile/profile_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.appBottomBar;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: _Paths.appBottomBar,
      page: () => AppBottomBar(),
      binding: AppBottomBarBinding(),
    ),

    GetPage(
      name: _Paths.profile,
      page: () => const ProfilePage(),
    ),

    GetPage(
      name: _Paths.products,
      page: () => const ProductsCategory(),
    ),

    GetPage(
      name: _Paths.sales,
    page: () => const CartItemPage(),
    ),
    GetPage(
      name: _Paths.details,
    page: () => const ProductFavored(),
    ), GetPage(
      name: _Paths.info,
    page: () => const ProductDetails(),
    ),
  ];
}
