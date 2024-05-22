import 'package:get/get.dart';

class IntroductionController extends GetxController {
  RxInt currentPage = 0.obs;

  String textTitle() {
  var textTitleIntro = "".obs;
    if (currentPage == 0.obs) {
      return textTitleIntro.value = "Comfortable Space";
    } else if (currentPage == 1.obs) {
      return textTitleIntro.value = "Modern Design";
    } else if (currentPage == 2.obs) {
      return textTitleIntro.value = "Styled Living";
    } else if (currentPage == 3.obs) {
      return textTitleIntro.value = "Relaxing Furniture";
    } else {
      return textTitleIntro.value = "Lorem Ipsum Dolor";
    }
  }

  void addCurrentPage() {
    if (currentPage.value <= 3) {
      currentPage.value++;
    }
  }
  void minCurrentPage() {
    currentPage.value--;
  }
}
