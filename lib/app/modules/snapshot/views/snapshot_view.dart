import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:home_decor/constant/allmaterial.dart';

class SnapshotView extends GetView<SnapshotController> {
  const SnapshotView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllMaterial.colorPrimary,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/home_snapshot.png"),
                ),
              ),
            ),
            const Text(
              "HOME",
              style: TextStyle(
                fontFamily: AllMaterial.fontFamily,
                color: AllMaterial.colorWhite,
                fontWeight: AllMaterial.fontSemiBold,
                fontSize: 60,
              ),
            ),
            const Text(
              "DECOR",
              style: TextStyle(
                letterSpacing: 10,
                fontSize: 30,
                fontFamily: AllMaterial.fontFamily,
                color: AllMaterial.colorWhite,
                fontWeight: AllMaterial.fontRegular,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
