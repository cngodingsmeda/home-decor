import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:home_decor/constant/allmaterial.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../controllers/cart_page_controller.dart';

class CartPageView extends GetView<CartPageController> {
  const CartPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllMaterial.colorWhite,
      appBar: AppBar(
        backgroundColor: AllMaterial.colorWhite,
        surfaceTintColor: AllMaterial.colorWhite,
        title: const Text(
          'My Cart',
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
              tooltip: "Edit",
              onPressed: () {},
              icon: Icon(MdiIcons.pencilOutline),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              MdiIcons.cartOutline,
              color: AllMaterial.colorPrimarySoft,
              size: 210,
            ),
            const SizedBox(height: 10),
            const Text(
              "There are no items in your cart",
              style: TextStyle(
                fontSize: 20,
                fontWeight: AllMaterial.fontMedium,
                color: AllMaterial.colorBlackSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
