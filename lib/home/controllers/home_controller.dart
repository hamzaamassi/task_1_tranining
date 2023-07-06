import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt initialIndex = 0.obs;

  void setInitialIndex(int index) {
    initialIndex.value = index;

  }
}