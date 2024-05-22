import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPageController extends GetxController {
  TextEditingController controllerSearch = TextEditingController();
  FocusNode focusNodeC = FocusNode();
  void searchItem() {
    print("p bang");
  }

  @override
  void onInit() {
    if (!focusNodeC.hasFocus) {
      searchItem();
    }
    super.onInit();
  }

  @override
  void onClose() {
    controllerSearch.dispose();
    focusNodeC.dispose();
    super.onClose();
  }
}
