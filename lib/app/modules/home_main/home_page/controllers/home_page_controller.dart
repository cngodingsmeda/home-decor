import 'package:get/get.dart';

class HomePageController extends GetxController {

  final count = 0.obs;

  @override
  void onReady() {
  }


  void increment() => count.value++;
}
