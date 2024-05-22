import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:home_decor/app/modules/introduction/views/introduction_view.dart';
import 'package:home_decor/app/modules/snapshot/views/snapshot_view.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      // home: const SnapshotView(),
      home: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SnapshotView();
          } else {
            return  IntroductionView();
          }
        },
      ),
    ),
  );
}
