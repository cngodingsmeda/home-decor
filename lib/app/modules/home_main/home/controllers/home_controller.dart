import 'package:get/get.dart';

class HomeController extends GetxController {
  var goToCollection = false.obs;
  var currentIndexBar = 0.obs;
  var categoriesSelected = 0.obs;
  var isSelected = false.obs;
  
  void selectCategories() {
    isSelected.value = true;
  }

  void addCategoriesSelected() {
    if (categoriesSelected.value <= 4) {
      categoriesSelected.value++;
    }
  }
  void minCategoriesSelected() {
    categoriesSelected.value--;
  }
}
