import '../controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

// ignore: must_be_immutable
class SliderlovelysportcoItemWidget extends StatelessWidget {
  SliderlovelysportcoItemWidget(this.sliderlovelysportcoItemModelObj);

  String sliderlovelysportcoItemModelObj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black26, spreadRadius: 0, blurRadius: 2, offset: Offset(0, 0))],
            image: DecorationImage(
              image: AssetImage(ImageConstant.imagePath + sliderlovelysportcoItemModelObj),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(getHorizontalSize(8))),
      ),
    );
  }
}
