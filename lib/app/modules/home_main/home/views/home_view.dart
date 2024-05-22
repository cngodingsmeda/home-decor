// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_decor/app/modules/cart/cart_page/views/cart_page_view.dart';
import 'package:home_decor/app/modules/categories/categories_page/views/categories_page_view.dart';
import 'package:home_decor/app/modules/home_main/home_page/views/home_page_view.dart';
import 'package:home_decor/app/modules/profile/profile_page/views/profile_page_view.dart';
import 'package:home_decor/app/modules/wishlist/wishlist_page/views/wishlist_page_view.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:home_decor/constant/allmaterial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllMaterial.colorWhite,
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          controller.currentIndexBar.value = value;
          
        },
        children: [
          // NAVIGASI HOME
          HomePageView(),

          // NAVIGASI CATEGORIES
          const CategoriesPageView(),

          // NAVIGASI CART
          const CartPageView(),

          // NAVIGASI WISHLIST
          const WishlistPageView(),

          // NAVIGASI PROFILE
          const ProfilePageView(),
        ],
      ),
      bottomNavigationBar: Obx(
        () => SalomonBottomBar(

          margin: const EdgeInsets.only(top: 10, bottom: 15),
          currentIndex: controller.currentIndexBar.value,
          onTap: (index) {
            controller.currentIndexBar.value = index;
            pageController.jumpToPage(index);
          },
          items: [
            // Home
            SalomonBottomBarItem(
              icon: Icon(
                MdiIcons.homeVariantOutline,
                color: AllMaterial.colorSecondary,
              ),
              activeIcon: Icon(MdiIcons.homeVariant),
              title: const Text(
                "Home",
                style: TextStyle(
                  color: AllMaterial.colorPrimaryBlack,
                ),
              ),
              selectedColor: AllMaterial.colorPrimaryBlack,
            ),

            // Categories
            SalomonBottomBarItem(
              icon: Icon(
                MdiIcons.formatListBulletedSquare,
                color: AllMaterial.colorSecondary,
              ),
              activeIcon: Icon(MdiIcons.formatListBulletedType),
              title: const Text(
                "Categories",
                style: TextStyle(
                  color: AllMaterial.colorPrimaryBlack,
                ),
              ),
              selectedColor: AllMaterial.colorPrimaryBlack,
            ),

            // Cart
            SalomonBottomBarItem(
              icon: Icon(
                MdiIcons.cartOutline,
                color: AllMaterial.colorSecondary,
              ),
              activeIcon: Icon(MdiIcons.cart),
              title: const Text(
                "Cart",
                style: TextStyle(
                  color: AllMaterial.colorPrimaryBlack,
                ),
              ),
              selectedColor: AllMaterial.colorPrimaryBlack,
            ),

            // Wishlist
            SalomonBottomBarItem(
              icon: Icon(
                MdiIcons.bookHeartOutline,
                color: AllMaterial.colorSecondary,
              ),
              activeIcon: Icon(MdiIcons.bookHeart),
              title: const Text(
                "Wishlist",
                style: TextStyle(
                  color: AllMaterial.colorPrimaryBlack,
                ),
              ),
              selectedColor: AllMaterial.colorPrimaryBlack,
            ),

            // Profile
            SalomonBottomBarItem(
              icon: Icon(
                MdiIcons.accountOutline,
                color: AllMaterial.colorSecondary,
              ),
              activeIcon: Icon(MdiIcons.account),
              title: const Text(
                "Profile",
                style: TextStyle(
                  color: AllMaterial.colorPrimaryBlack,
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
