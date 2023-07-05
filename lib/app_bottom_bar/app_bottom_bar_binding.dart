
import 'package:get/get.dart';
import 'package:task_1/app_bottom_bar/controllers/app_bottom_bar_controller.dart';

class AppBottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AppBottomBarController>(AppBottomBarController());

    // Get.lazyPut<ProductsController>(() => ProductsController());

  }
}
