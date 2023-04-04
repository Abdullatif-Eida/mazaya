import 'controller/splace_screen_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

class SplaceScreenOneScreen extends GetWidget<SplaceScreenOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //CustomImageView(svgPath: ImageConstant.logo, height: getSize(80), width: getSize(80)),
              Image.asset(ImageConstant.logo, height: getSize(80), width: getSize(80)),
              Padding(
                  padding: getPadding(top: 8),
                  child: Text("Mazaya".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtBerkshireSwashRegular37)),
            ],
          ),
        ),
      ),
    );
  }
}
