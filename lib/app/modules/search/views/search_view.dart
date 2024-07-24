// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:home_decor/app/modules/search/controllers/search_controller.dart';
import 'package:home_decor/constant/allmaterial.dart';

class SearchPageView extends GetView<SearchPageController> {
  var controllerS = Get.put(SearchPageController());
  SearchPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllMaterial.colorWhite,
      appBar: AppBar(
        backgroundColor: AllMaterial.colorWhite,
        surfaceTintColor: AllMaterial.colorWhite,
        title: const Text(
          'Search',
          style: TextStyle(
            color: AllMaterial.colorPrimary,
            fontWeight: AllMaterial.fontSemiBold,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: IconButton(
              tooltip: "Filter",
              onPressed: () {
                
              },
              icon: const Icon(Icons.filter_alt),
              color: AllMaterial.colorBlackSecondary,
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  AllMaterial.colorPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 10),
          TextField(
            cursorColor: AllMaterial.colorPrimary,
            keyboardType: TextInputType.text,
            focusNode: controllerS.focusNodeC,
            controller: controllerS.controllerSearch,
            decoration: InputDecoration(
              fillColor: AllMaterial.colorPrimary,
              focusColor: AllMaterial.colorPrimary,
              hoverColor: AllMaterial.colorPrimary,
              suffixIcon: IconButton(
                onPressed: () {
                  controllerS.searchItem();
                },
                icon: const Icon(
                  color: AllMaterial.colorPrimaryBlack,
                  Icons.search,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 15),
              hintText: "Search...",
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.5,
                  color: AllMaterial.colorPrimaryBlack,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
            ),
            onTapOutside: (_) {
              controllerS.focusNodeC.unfocus();
            },
            onSubmitted: (_) {
              controllerS.searchItem();
            },
          ),
          const SizedBox(height: 25),
          const Text(
            "Top Searches",
            style: TextStyle(
              fontSize: 17,
              color: AllMaterial.colorPrimaryBlack,
              fontWeight: AllMaterial.fontSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
