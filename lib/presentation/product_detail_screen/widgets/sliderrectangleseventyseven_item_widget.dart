import '../controller/product_detail_controller.dart';
import '../models/sliderrectangleseventyseven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

// ignore: must_be_immutable
class SliderrectangleseventysevenItemWidget extends StatelessWidget {
  SliderrectangleseventysevenItemWidget(this.sliderrectangleseventysevenItemModelObj);

  SliderrectangleseventysevenItemModel sliderrectangleseventysevenItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        "https://i.cbc.ca/1.6801410.1680639762!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_780/dr-jose-francois.jpg",
        alignment: Alignment.center,
      ),
    );
  }
}
