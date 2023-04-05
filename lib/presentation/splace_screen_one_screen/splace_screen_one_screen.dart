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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.splashBanner,
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              SizedBox(height: 15),
              CustomImageView(
                imagePath: ImageConstant.logo,
                height: getSize(180),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
