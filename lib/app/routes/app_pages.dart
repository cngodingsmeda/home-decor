import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/introduction/bindings/introduction_binding.dart';
import '../modules/introduction/views/introduction_view.dart';
import '../modules/snapshot/bindings/snapshot_binding.dart';
import '../modules/snapshot/views/snapshot_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SNAPSHOT,
      page: () => const SnapshotView(),
      binding: SnapshotBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () =>  IntroductionView(),
      binding: IntroductionBinding(),
    ),
  ];
}
