import 'package:get/get.dart';
import 'package:home_decor/app/modules/search/controllers/search_controller.dart';

class SearchPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchPageController>(
      () => SearchPageController(),
    );
  }
}
