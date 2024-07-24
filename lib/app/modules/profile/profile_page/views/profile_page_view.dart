import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:home_decor/constant/allmaterial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllMaterial.colorWhite,
      appBar: AppBar(
        backgroundColor: AllMaterial.colorWhite,
        surfaceTintColor: AllMaterial.colorWhite,
        title: const Text(
          'My Profile',
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
              tooltip: "Edit Account",
              onPressed: () {},
              icon: Icon(MdiIcons.accountEditOutline),
              color: AllMaterial.colorBlackSecondary,
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  AllMaterial.colorPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'ProfilePageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
