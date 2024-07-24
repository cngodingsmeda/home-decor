// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:home_decor/constant/allmaterial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../controllers/wishlist_page_controller.dart';

class WishlistPageView extends GetView<WishlistPageController> {
  List keranjang = [].obs;
 WishlistPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllMaterial.colorWhite,
      appBar: AppBar(
        backgroundColor: AllMaterial.colorWhite,
        surfaceTintColor: AllMaterial.colorWhite,
        title: const Text(
          'Wishlist',
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
              tooltip: "Add More",
              onPressed: () {},
              icon: Icon(MdiIcons.plus),
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
      body: (keranjang.isEmpty) ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              MdiIcons.bookHeartOutline,
              color: AllMaterial.colorPrimarySoft,
              size: 210,
            ),
            const SizedBox(height: 10),
            const Text(
              "Your Wishlist is Empty",
              style: TextStyle(
                fontSize: 20,
                fontWeight: AllMaterial.fontMedium,
                color: AllMaterial.colorBlackSecondary,
              ),
            ),
          ],
        ),
      ) : ListView.builder( itemCount: keranjang.length,itemBuilder: (context, index) {
        return const Card(
          
        );
        
      },),
    );
  }
}
