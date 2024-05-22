// ignore_for_file: constant_pattern_never_matches_value_type, must_be_immutable, unrelated_type_equality_checks

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:home_decor/app/routes/app_pages.dart';
import 'package:home_decor/constant/allmaterial.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  var introC = Get.put(IntroductionController());
  var box = GetStorage();
  IntroductionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllMaterial.colorWhite,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: Get.height * 0.715,
                width: Get.width,
                decoration: const BoxDecoration(
                  color: AllMaterial.colorPrimarySoft,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(34),
                  ),
                ),
              ),
              Obx(
                () => Container(
                  height: Get.height * 0.7,
                  width: Get.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/image/intro_${introC.currentPage.value}.png",
                      ),
                    ),
                  ),
                ),
              ),
              Obx(
                () => (introC.currentPage != 0.obs)
                    ? Ink(
                        child: InkWell(
                          onTap: () {
                            introC.minCurrentPage();
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: context.mediaQueryPadding.top + 10,
                              horizontal: 10,
                            ),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_back,
                                  color: AllMaterial.colorBlackSecondary,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Back",
                                  style: TextStyle(
                                    fontWeight: AllMaterial.fontMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
            child: Column(
              children: [
                Obx(
                  () => Text(
                    introC.textTitle(),
                    style: const TextStyle(
                      color: AllMaterial.colorPrimary,
                      fontWeight: AllMaterial.fontSemiBold,
                      fontSize: 28,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: AllMaterial.fontRegular,
                  ),
                  "Lorem ipsum dolor sit amet consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                ),
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Obx(
                          () => (introC.currentPage == 0.obs)
                              ? Container(
                                  width: 35,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    color: AllMaterial.colorPrimary,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                )
                              : Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    color: AllMaterial.colorPrimarySoft,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                ),
                        ),
                        const SizedBox(width: 5),
                        Obx(
                          () => (introC.currentPage == 1.obs)
                              ? Container(
                                  width: 35,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    color: AllMaterial.colorPrimary,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                )
                              : Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    color: AllMaterial.colorPrimarySoft,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                ),
                        ),
                        const SizedBox(width: 5),
                        Obx(
                          () => (introC.currentPage == 2.obs)
                              ? Container(
                                  width: 35,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    color: AllMaterial.colorPrimary,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                )
                              : Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    color: AllMaterial.colorPrimarySoft,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                ),
                        ),
                        const SizedBox(width: 5),
                        Obx(
                          () => (introC.currentPage == 3.obs)
                              ? Container(
                                  width: 35,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    color: AllMaterial.colorPrimary,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                )
                              : Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    color: AllMaterial.colorPrimarySoft,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                ),
                        ),
                      ],
                    ),
                    Obx(
                      () => (introC.currentPage.value == 3)
                          ? InkWell(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(25),
                              ),
                              onTap: () {
                                Get.offNamed(Routes.HOME);
                                box.write("introduction", "udah");
                              },
                              child: Ink(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  width: 130,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        25,
                                      ),
                                    ),
                                    color: AllMaterial.colorPrimary,
                                  ),
                                  child: const Text(
                                    "Get Started",
                                    style: TextStyle(
                                      color: AllMaterial.colorBlackSecondary,
                                      fontWeight: AllMaterial.fontSemiBold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : InkWell(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(25),
                              ),
                              onTap: () => introC.addCurrentPage(),
                              child: Ink(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  width: 130,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        25,
                                      ),
                                    ),
                                    color: AllMaterial.colorPrimary,
                                  ),
                                  child: const Text(
                                    "Next",
                                    style: TextStyle(
                                      color: AllMaterial.colorBlackSecondary,
                                      fontWeight: AllMaterial.fontSemiBold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
