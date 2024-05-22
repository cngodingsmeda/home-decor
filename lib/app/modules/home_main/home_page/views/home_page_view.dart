// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:home_decor/app/modules/home_main/home/controllers/home_controller.dart';
import 'package:home_decor/app/routes/app_pages.dart';
import 'package:home_decor/constant/allmaterial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  var controllerH = Get.put(HomeController());
  HomePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 25,
              left: 25,
              // top: context.mediaQueryPadding.top,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Welcome Back",
                          style: TextStyle(
                            color: AllMaterial.colorPrimary,
                            fontSize: 20,
                            fontWeight: AllMaterial.fontBold,
                          ),
                        ),
                        Text(
                          "Create spaces that bring joy",
                          style: TextStyle(
                            color: AllMaterial.colorBlackSecondary,
                            fontSize: 14,
                            fontWeight: AllMaterial.fontRegular,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: IconButton(
                        tooltip: "Search",
                        onPressed: () {
                          Get.toNamed(Routes.SEARCH);
                        },
                        icon: Icon(MdiIcons.magnify),
                        color: AllMaterial.colorBlackSecondary,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            AllMaterial.colorPrimary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Image.asset("assets/image/ads_home.png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.CATEGORIES_PAGE);
                      },
                      child: Ink(
                        padding: const EdgeInsets.all(2),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Categories",
                              style: TextStyle(
                                color: AllMaterial.colorPrimaryBlack,
                                fontSize: 15,
                                fontWeight: AllMaterial.fontSemiBold,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: AllMaterial.colorPrimaryBlack,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // CHAIR - INDEX 0
                              InkWell(
                                onTap: () {
                                  controllerH.isSelected.toggle();
                                  controllerH.categoriesSelected.value = 0;
                                },
                                child: Ink(
                                  child: Obx(
                                    () => Container(
                                      width: 65,
                                      height: 65,
                                      decoration: BoxDecoration(
                                        color: (!controllerH.isSelected.value &&
                                                controllerH.categoriesSelected
                                                        .value ==
                                                    0)
                                            ? AllMaterial.colorSecondarySoft
                                            : AllMaterial.colorPrimary,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(13),
                                        ),
                                      ),
                                      child: Icon(
                                        MdiIcons.sofaSingleOutline,
                                        size: 40,
                                        color: (!controllerH.isSelected.value &&
                                                controllerH.categoriesSelected
                                                        .value ==
                                                    0)
                                            ? AllMaterial.colorSecondary
                                            : AllMaterial.colorPrimaryBlack,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 14),

                              // BED - INDEX 1
                              InkWell(
                                onTap: () {
                                  controllerH.isSelected.toggle();
                                  controllerH.categoriesSelected.value = 1;
                                },
                                child: Ink(
                                  child: Obx(
                                    () => Container(
                                      width: 65,
                                      height: 65,
                                      decoration: BoxDecoration(
                                        color: (!controllerH.isSelected.value &&
                                                controllerH.categoriesSelected
                                                        .value ==
                                                    1)
                                            ? AllMaterial.colorSecondarySoft
                                            : AllMaterial.colorPrimary,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(13),
                                        ),
                                      ),
                                      child: Icon(
                                        MdiIcons.bedKingOutline,
                                        size: 40,
                                        color: (!controllerH.isSelected.value &&
                                                controllerH.categoriesSelected
                                                        .value ==
                                                    1)
                                            ? AllMaterial.colorSecondary
                                            : AllMaterial.colorPrimaryBlack,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 14),

                              // DINING ROOM - INDEX 2
                              Container(
                                width: 65,
                                height: 65,
                                decoration: const BoxDecoration(
                                  color: AllMaterial.colorSecondarySoft,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(13),
                                  ),
                                ),
                                child: Icon(
                                  MdiIcons.tableChair,
                                  size: 40,
                                  color: AllMaterial.colorSecondary,
                                ),
                              ),
                              const SizedBox(width: 14),

                              // KITCHEN - INDEX 3
                              Container(
                                width: 65,
                                height: 65,
                                decoration: const BoxDecoration(
                                  color: AllMaterial.colorSecondarySoft,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(13),
                                  ),
                                ),
                                child: Icon(
                                  MdiIcons.countertopOutline,
                                  size: 40,
                                  color: AllMaterial.colorSecondary,
                                ),
                              ),
                              const SizedBox(width: 14),

                              // OFFICE - INDEX 4
                              Container(
                                width: 65,
                                height: 65,
                                decoration: const BoxDecoration(
                                  color: AllMaterial.colorSecondarySoft,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(13),
                                  ),
                                ),
                                child: Icon(
                                  MdiIcons.chairRolling,
                                  size: 40,
                                  color: AllMaterial.colorSecondary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.CATEGORIES_PAGE);
                            },
                            child: Ink(
                              padding: const EdgeInsets.all(2),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Best Seller",
                                    style: TextStyle(
                                      color: AllMaterial.colorPrimaryBlack,
                                      fontSize: 15,
                                      fontWeight: AllMaterial.fontSemiBold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    color: AllMaterial.colorPrimaryBlack,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
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
                                    image: AssetImage(
                                        "assets/image/kitchen_cart.png"),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Kitchen Cart",
                                        style: TextStyle(
                                          color:
                                              AllMaterial.colorBlackSecondary,
                                          fontSize: 17,
                                          fontWeight: AllMaterial.fontSemiBold,
                                        ),
                                      ),
                                      const Text(
                                        "Lorem ipsum dolor sit \namet, consectetur",
                                        style: TextStyle(
                                          color:
                                              AllMaterial.colorBlackSecondary,
                                          fontSize: 12,
                                          fontWeight: AllMaterial.fontSemiBold,
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.all(2),
                                            width: 55,
                                            height: 25,
                                            decoration: const BoxDecoration(
                                              color: AllMaterial.colorWhite,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  size: 15,
                                                  MdiIcons.star,
                                                  color:
                                                      AllMaterial.colorPrimary,
                                                ),
                                                const SizedBox(width: 2),
                                                const Text(
                                                  "4.5",
                                                  style: TextStyle(
                                                    color:
                                                        AllMaterial.colorBlack,
                                                   
                                                    fontWeight:
                                                        AllMaterial.fontMedium,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 20),
                                          Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.all(5),
                                            width: 75,
                                            height: 25,
                                            decoration: const BoxDecoration(
                                              color: AllMaterial.colorWhite,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(15),
                                              ),
                                            ),
                                            child: const Text(
                                              "Shop Now",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: AllMaterial.colorBlack,
                                               
                                                fontWeight:
                                                    AllMaterial.fontMedium,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.CATEGORIES_PAGE);
                            },
                            child: Ink(
                              padding: const EdgeInsets.all(2),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "New Collection",
                                    style: TextStyle(
                                      color: AllMaterial.colorPrimaryBlack,
                                      fontSize: 15,
                                      fontWeight: AllMaterial.fontSemiBold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    color: AllMaterial.colorPrimaryBlack,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          GridTile(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: Get.width * 0.41,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/image/aluminium_chair.png",
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        "Aluminium Chair",
                                        style: TextStyle(
                                          color: AllMaterial.colorBlack,
                                          fontSize: 15,
                                          fontWeight: AllMaterial.fontSemiBold,
                                        ),
                                      ),
                                      const SizedBox(height: 3),
                                      const Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color:
                                              AllMaterial.colorBlackSecondary,
                                          fontSize: 12,
                                          fontWeight: AllMaterial.fontRegular,
                                        ),
                                      ),
                                      const Divider(
                                          color: AllMaterial.colorPrimary),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "\$120.00",
                                            style: TextStyle(
                                            
                                              color:
                                                  AllMaterial.colorPrimaryBlack,
                                              fontSize: 15,
                                              fontWeight:
                                                  AllMaterial.fontSemiBold,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  MdiIcons.heart,
                                                  size: 17,
                                                ),
                                                color: AllMaterial.colorWhite,
                                                style: ButtonStyle(
                                                  fixedSize:
                                                      const MaterialStatePropertyAll(
                                                    Size(
                                                      15,
                                                      15,
                                                    ),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    AllMaterial.colorPrimary,
                                                  ),
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  MdiIcons.plusThick,
                                                  size: 17,
                                                ),
                                                color: AllMaterial.colorWhite,
                                                style: ButtonStyle(
                                                  fixedSize:
                                                      const MaterialStatePropertyAll(
                                                    Size(
                                                      15,
                                                      15,
                                                    ),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    AllMaterial.colorPrimary,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width * 0.41,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/image/stylish_chair.png",
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        "Stylish Chair",
                                        style: TextStyle(
                                          color: AllMaterial.colorBlack,
                                          fontSize: 15,
                                          fontWeight: AllMaterial.fontSemiBold,
                                        ),
                                      ),
                                      const SizedBox(height: 3),
                                      const Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color:
                                              AllMaterial.colorBlackSecondary,
                                          fontSize: 12,
                                          fontWeight: AllMaterial.fontRegular,
                                        ),
                                      ),
                                      const Divider(
                                          color: AllMaterial.colorPrimary),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "\$120.00",
                                            style: TextStyle(
                     
                                              color:
                                                  AllMaterial.colorPrimaryBlack,
                                              fontSize: 15,
                                              fontWeight:
                                                  AllMaterial.fontSemiBold,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  MdiIcons.heart,
                                                  size: 17,
                                                ),
                                                color: AllMaterial.colorWhite,
                                                style: ButtonStyle(
                                                  fixedSize:
                                                      const MaterialStatePropertyAll(
                                                    Size(
                                                      15,
                                                      15,
                                                    ),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    AllMaterial.colorPrimary,
                                                  ),
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  MdiIcons.plusThick,
                                                  size: 17,
                                                ),
                                                color: AllMaterial.colorWhite,
                                                style: ButtonStyle(
                                                  fixedSize:
                                                      const MaterialStatePropertyAll(
                                                    Size(
                                                      15,
                                                      15,
                                                    ),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    AllMaterial.colorPrimary,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          GridTile(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: Get.width * 0.41,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/image/elegance_chair.png",
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        "Elegance Chair",
                                        style: TextStyle(
                                          color: AllMaterial.colorBlack,
                                          fontSize: 15,
                                          fontWeight: AllMaterial.fontSemiBold,
                                        ),
                                      ),
                                      const SizedBox(height: 3),
                                      const Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color:
                                              AllMaterial.colorBlackSecondary,
                                          fontSize: 12,
                                          fontWeight: AllMaterial.fontRegular,
                                        ),
                                      ),
                                      const Divider(
                                          color: AllMaterial.colorPrimary),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "\$120.00",
                                            style: TextStyle(

                                              color:
                                                  AllMaterial.colorPrimaryBlack,
                                              fontSize: 15,
                                              fontWeight:
                                                  AllMaterial.fontSemiBold,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  MdiIcons.heart,
                                                  size: 17,
                                                ),
                                                color: AllMaterial.colorWhite,
                                                style: ButtonStyle(
                                                  fixedSize:
                                                      const MaterialStatePropertyAll(
                                                    Size(
                                                      15,
                                                      15,
                                                    ),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    AllMaterial.colorPrimary,
                                                  ),
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  MdiIcons.plusThick,
                                                  size: 17,
                                                ),
                                                color: AllMaterial.colorWhite,
                                                style: ButtonStyle(
                                                  fixedSize:
                                                      const MaterialStatePropertyAll(
                                                    Size(
                                                      15,
                                                      15,
                                                    ),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    AllMaterial.colorPrimary,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width * 0.41,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/image/modern_chair.png",
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        "Modern Chair",
                                        style: TextStyle(
                                          color: AllMaterial.colorBlack,
                                          fontSize: 15,
                                          fontWeight: AllMaterial.fontSemiBold,
                                        ),
                                      ),
                                      const SizedBox(height: 3),
                                      const Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color:
                                              AllMaterial.colorBlackSecondary,
                                          fontSize: 12,
                                          fontWeight: AllMaterial.fontRegular,
                                        ),
                                      ),
                                      const Divider(
                                          color: AllMaterial.colorPrimary),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "\$120.00",
                                            style: TextStyle(

                                              color:
                                                  AllMaterial.colorPrimaryBlack,
                                              fontSize: 15,
                                              fontWeight:
                                                  AllMaterial.fontSemiBold,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  MdiIcons.heart,
                                                  size: 17,
                                                ),
                                                color: AllMaterial.colorWhite,
                                                style: ButtonStyle(
                                                  fixedSize:
                                                      const MaterialStatePropertyAll(
                                                    Size(
                                                      15,
                                                      15,
                                                    ),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    AllMaterial.colorPrimary,
                                                  ),
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  MdiIcons.plusThick,
                                                  size: 17,
                                                ),
                                                color: AllMaterial.colorWhite,
                                                style: ButtonStyle(
                                                  fixedSize:
                                                      const MaterialStatePropertyAll(
                                                    Size(
                                                      15,
                                                      15,
                                                    ),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                    AllMaterial.colorPrimary,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                        ],
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
