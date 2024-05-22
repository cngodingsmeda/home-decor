import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:home_decor/constant/allmaterial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllMaterial.colorWhite,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: 25,
              left: 25,
              top: context.mediaQueryPadding.top + 25,
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
                            fontFamily: AllMaterial.fontFamily,
                            color: AllMaterial.colorPrimary,
                            fontSize: 20,
                            fontWeight: AllMaterial.fontBold,
                          ),
                        ),
                        Text(
                          "Create spaces that bring joy",
                          style: TextStyle(
                            fontFamily: AllMaterial.fontFamily,
                            color: AllMaterial.colorBlackSecondary,
                            fontSize: 14,
                            fontWeight: AllMaterial.fontRegular,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(MdiIcons.magnify),
                      color: AllMaterial.colorBlackSecondary,
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
                    const Text(
                      "Categories",
                      style: TextStyle(
                        fontFamily: AllMaterial.fontFamily,
                        color: AllMaterial.colorPrimaryBlack,
                        fontSize: 15,
                        fontWeight: AllMaterial.fontSemiBold,
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
                                  controller.isSelected.toggle();
                                  controller.categoriesSelected.value = 0;
                                },
                                child: Ink(
                                  child: Obx(
                                    () => Container(
                                      width: 65,
                                      height: 65,
                                      decoration: BoxDecoration(
                                        color: (!controller.isSelected.value &&
                                                controller.categoriesSelected
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
                                        color: (!controller.isSelected.value &&
                                                controller.categoriesSelected
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
                                  controller.isSelected.toggle();
                                  controller.categoriesSelected.value = 1;
                                },
                                child: Ink(
                                  child: Obx(
                                    () => Container(
                                      width: 65,
                                      height: 65,
                                      decoration: BoxDecoration(
                                        color: (!controller.isSelected.value &&
                                                controller.categoriesSelected
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
                                        color: (!controller.isSelected.value &&
                                                controller.categoriesSelected
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
                          const Text(
                            "Best Seller",
                            style: TextStyle(
                              fontFamily: AllMaterial.fontFamily,
                              color: AllMaterial.colorPrimaryBlack,
                              fontSize: 15,
                              fontWeight: AllMaterial.fontSemiBold,
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
                                          fontFamily: AllMaterial.fontFamily,
                                          color:
                                              AllMaterial.colorBlackSecondary,
                                          fontSize: 17,
                                          fontWeight: AllMaterial.fontSemiBold,
                                        ),
                                      ),
                                      const Text(
                                        "Lorem ipsum dolor sit \namet, consectetur",
                                        style: TextStyle(
                                          fontFamily: AllMaterial.fontFamily,
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
                                                    fontFamily:
                                                        AllMaterial.fontFamily,
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
                                                fontFamily:
                                                    AllMaterial.fontFamily,
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
                          const Text(
                            "New Collection",
                            style: TextStyle(
                              fontFamily: AllMaterial.fontFamily,
                              color: AllMaterial.colorPrimaryBlack,
                              fontSize: 15,
                              fontWeight: AllMaterial.fontSemiBold,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: Get.width,
                            height: 150,
                            color: AllMaterial.colorBlackSecondary,
                          ),
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
      bottomNavigationBar: Obx(
        () => SalomonBottomBar(
          margin: const EdgeInsets.only(top: 10, bottom: 15),
          currentIndex: controller.currentIndexBar.value,
          onTap: (index) {
            controller.currentIndexBar.value = index;
          },
          items: [
            // Home
            SalomonBottomBarItem(
              icon: Icon(MdiIcons.homeVariantOutline),
              activeIcon: Icon(MdiIcons.homeVariant),
              title: const Text(
                "Home",
                style: TextStyle(
                  color: AllMaterial.colorPrimaryBlack,
                  fontFamily: AllMaterial.fontFamily,
                ),
              ),
              selectedColor: AllMaterial.colorPrimaryBlack,
            ),

            // Categories
            SalomonBottomBarItem(
              icon: Icon(MdiIcons.formatListBulletedSquare),
              activeIcon: Icon(MdiIcons.formatListBulletedType),
              title: const Text(
                "Categories",
                style: TextStyle(
                  color: AllMaterial.colorPrimaryBlack,
                  fontFamily: AllMaterial.fontFamily,
                ),
              ),
              selectedColor: AllMaterial.colorPrimaryBlack,
            ),

            // Cart
            SalomonBottomBarItem(
              icon: Icon(MdiIcons.cartOutline),
              activeIcon: Icon(MdiIcons.cart),
              title: const Text(
                "Cart",
                style: TextStyle(
                  color: AllMaterial.colorPrimaryBlack,
                  fontFamily: AllMaterial.fontFamily,
                ),
              ),
              selectedColor: AllMaterial.colorPrimaryBlack,
            ),

            // Wishlist
            SalomonBottomBarItem(
              icon: Icon(MdiIcons.bookHeartOutline),
              activeIcon: Icon(MdiIcons.bookHeart),
              title: const Text(
                "Wishlist",
                style: TextStyle(
                  color: AllMaterial.colorPrimaryBlack,
                  fontFamily: AllMaterial.fontFamily,
                ),
              ),
              selectedColor: AllMaterial.colorPrimaryBlack,
            ),

            // Profile
            SalomonBottomBarItem(
              icon: Icon(MdiIcons.accountOutline),
              activeIcon: Icon(MdiIcons.account),
              title: const Text(
                "Profile",
                style: TextStyle(
                  color: AllMaterial.colorPrimaryBlack,
                  fontFamily: AllMaterial.fontFamily,
                ),
              ),
              selectedColor: AllMaterial.colorPrimaryBlack,
            ),
          ],
        ),
      ),
    );
  }
}
