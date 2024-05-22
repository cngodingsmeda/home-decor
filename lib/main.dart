import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:home_decor/app/modules/home_main/home/views/home_view.dart';
import 'package:home_decor/app/modules/introduction/views/introduction_view.dart';
import 'package:home_decor/app/modules/snapshot/views/snapshot_view.dart';
import 'package:home_decor/constant/allmaterial.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      theme: ThemeData(fontFamily: AllMaterial.fontFamily),
      home: FutureBuilder(
      
        future: Future.delayed(const Duration(seconds: 3)),
        builder: (context, snapshot) {
          var box = GetStorage();
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SnapshotView();
          } else {
            if (box.read("introduction") != null) {
              return HomeView();
            } else {
              return IntroductionView();
            }
          }
        },
      ),
    ),
  );
}
