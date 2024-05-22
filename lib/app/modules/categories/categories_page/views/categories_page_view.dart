import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:home_decor/constant/allmaterial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../controllers/categories_page_controller.dart';

class CategoriesPageView extends GetView<CategoriesPageController> {
  const CategoriesPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllMaterial.colorWhite,
        surfaceTintColor: AllMaterial.colorWhite,
        title: const Text(
          'Categories',
          style: TextStyle(
            color: AllMaterial.colorPrimary,
            fontWeight: AllMaterial.fontSemiBold,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: IconButton(
              tooltip: "Flash Sale",
              onPressed: () {},
              icon: Icon(MdiIcons.flash),
              color: AllMaterial.colorBlackSecondary,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  AllMaterial.colorPrimary,
                ),
              ),
            ),
          ),
          // IconButton(
          //   tooltip: "Flash Sale",
          //   onPressed: () {},
          //   icon: Icon(
          //     MdiIcons.flash,
          //     color: AllMaterial.colorPrimary,
          //   ),
          // ),
        ],
      ),
      backgroundColor: AllMaterial.colorWhite,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // BEDROOM
                  Stack(
                    children: [
                      Container(
                        height: 150,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          color: AllMaterial.colorPrimary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                      Container(
                        height: 180,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.topRight,
                            image: AssetImage("assets/image/bed.png"),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Bedroom",
                                style: TextStyle(
                                  color: AllMaterial.colorBlackSecondary,
                                  fontSize: 17,
                                  fontWeight: AllMaterial.fontSemiBold,
                                ),
                              ),
                              const Text(
                                "Lorem ipsum dolor sit \namet, consectetur",
                                style: TextStyle(
                                  color: AllMaterial.colorBlackSecondary,
                                  fontSize: 12,
                                  fontWeight: AllMaterial.fontSemiBold,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                width: 140,
                                height: 25,
                                decoration: const BoxDecoration(
                                  color: AllMaterial.colorWhite,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Ink(
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "See All Product",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AllMaterial.colorBlack,
                                            fontWeight: AllMaterial.fontMedium,
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right_outlined,
                                          color:
                                              AllMaterial.colorBlackSecondary,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),

                  // LIVING ROOM
                  Stack(
                    children: [
                      Container(
                        height: 150,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          color: AllMaterial.colorPrimary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                      Container(
                        height: 180,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.topRight,
                            image: AssetImage("assets/image/living_room.png"),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Living Room",
                                style: TextStyle(
                                  color: AllMaterial.colorBlackSecondary,
                                  fontSize: 17,
                                  fontWeight: AllMaterial.fontSemiBold,
                                ),
                              ),
                              const Text(
                                "Lorem ipsum dolor sit \namet, consectetur",
                                style: TextStyle(
                                  color: AllMaterial.colorBlackSecondary,
                                  fontSize: 12,
                                  fontWeight: AllMaterial.fontSemiBold,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                width: 140,
                                height: 25,
                                decoration: const BoxDecoration(
                                  color: AllMaterial.colorWhite,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Ink(
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "See All Product",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AllMaterial.colorBlack,
                                            fontWeight: AllMaterial.fontMedium,
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right_outlined,
                                          color:
                                              AllMaterial.colorBlackSecondary,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),

                  // KITCHEN
                  Stack(
                    children: [
                      Container(
                        height: 150,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          color: AllMaterial.colorPrimary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                      Container(
                        height: 180,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.topRight,
                            image: AssetImage("assets/image/kitchen_cart.png"),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Kitchen",
                                style: TextStyle(
                                  color: AllMaterial.colorBlackSecondary,
                                  fontSize: 17,
                                  fontWeight: AllMaterial.fontSemiBold,
                                ),
                              ),
                              const Text(
                                "Lorem ipsum dolor sit \namet, consectetur",
                                style: TextStyle(
                                  color: AllMaterial.colorBlackSecondary,
                                  fontSize: 12,
                                  fontWeight: AllMaterial.fontSemiBold,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                width: 140,
                                height: 25,
                                decoration: const BoxDecoration(
                                  color: AllMaterial.colorWhite,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Ink(
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "See All Product",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AllMaterial.colorBlack,
                                            fontWeight: AllMaterial.fontMedium,
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right_outlined,
                                          color:
                                              AllMaterial.colorBlackSecondary,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),

                  // DINING ROOM
                  Stack(
                    children: [
                      Container(
                        height: 150,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          color: AllMaterial.colorPrimary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                      Container(
                        height: 180,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.topRight,
                            image: AssetImage("assets/image/dining_room.png"),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Dining Room",
                                style: TextStyle(
                                  color: AllMaterial.colorBlackSecondary,
                                  fontSize: 17,
                                  fontWeight: AllMaterial.fontSemiBold,
                                ),
                              ),
                              const Text(
                                "Lorem ipsum dolor sit \namet, consectetur",
                                style: TextStyle(
                                  color: AllMaterial.colorBlackSecondary,
                                  fontSize: 12,
                                  fontWeight: AllMaterial.fontSemiBold,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                width: 140,
                                height: 25,
                                decoration: const BoxDecoration(
                                  color: AllMaterial.colorWhite,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Ink(
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "See All Product",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AllMaterial.colorBlack,
                                            fontWeight: AllMaterial.fontMedium,
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right_outlined,
                                          color:
                                              AllMaterial.colorBlackSecondary,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),

                  // OFFICE
                  Stack(
                    children: [
                      Container(
                        height: 150,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          color: AllMaterial.colorPrimary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                      Container(
                        height: 180,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.topRight,
                            image: AssetImage("assets/image/office.png"),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Office",
                                style: TextStyle(
                                  color: AllMaterial.colorBlackSecondary,
                                  fontSize: 17,
                                  fontWeight: AllMaterial.fontSemiBold,
                                ),
                              ),
                              const Text(
                                "Lorem ipsum dolor sit \namet, consectetur",
                                style: TextStyle(
                                  color: AllMaterial.colorBlackSecondary,
                                  fontSize: 12,
                                  fontWeight: AllMaterial.fontSemiBold,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                width: 140,
                                height: 25,
                                decoration: const BoxDecoration(
                                  color: AllMaterial.colorWhite,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Ink(
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "See All Product",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AllMaterial.colorBlack,
                                            fontWeight: AllMaterial.fontMedium,
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right_outlined,
                                          color:
                                              AllMaterial.colorBlackSecondary,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
