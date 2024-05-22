import 'package:get/get.dart';

import '../modules/cart/cart_page/bindings/cart_page_binding.dart';
import '../modules/cart/cart_page/views/cart_page_view.dart';
import '../modules/categories/categories_page/bindings/categories_page_binding.dart';
import '../modules/categories/categories_page/views/categories_page_view.dart';
import '../modules/home_main/home/bindings/home_binding.dart';
import '../modules/home_main/home/views/home_view.dart';
import '../modules/home_main/home_page/bindings/home_page_binding.dart';
import '../modules/home_main/home_page/views/home_page_view.dart';
import '../modules/introduction/bindings/introduction_binding.dart';
import '../modules/introduction/views/introduction_view.dart';
import '../modules/profile/profile_page/bindings/profile_page_binding.dart';
import '../modules/profile/profile_page/views/profile_page_view.dart';
import '../modules/search/bindings/search_binding.dart';
import '../modules/search/views/search_view.dart';
import '../modules/snapshot/bindings/snapshot_binding.dart';
import '../modules/snapshot/views/snapshot_view.dart';
import '../modules/wishlist/wishlist_page/bindings/wishlist_page_binding.dart';
import '../modules/wishlist/wishlist_page/views/wishlist_page_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SNAPSHOT,
      page: () => const SnapshotView(),
      binding: SnapshotBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () => IntroductionView(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORIES_PAGE,
      page: () => const CategoriesPageView(),
      binding: CategoriesPageBinding(),
    ),
    GetPage(
      name: _Paths.CART_PAGE,
      page: () => const CartPageView(),
      binding: CartPageBinding(),
    ),
    GetPage(
      name: _Paths.WISHLIST_PAGE,
      page: () => const WishlistPageView(),
      binding: WishlistPageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => const ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchPageView(),
      binding: SearchPageBinding(),
    ),
  ];
}
