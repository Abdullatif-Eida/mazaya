import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'sliderrectangleseventyseven_item_model.dart';
import 'doctortail_item_model.dart';

class DoctorDetailModel {
  RxList<SliderrectangleseventysevenItemModel>
      sliderrectangleseventysevenItemList =
      RxList.generate(3, (index) => SliderrectangleseventysevenItemModel());

  RxList<Color> colorList = [
    ColorConstant.redColor,
    ColorConstant.yellowColor,
    ColorConstant.darkGreyColor,
    ColorConstant.purpleColor
  ].obs;

  RxList<String> sizeList = ["6", "6.5", "7", "7.5", "8"].obs;

  RxList<DoctordetailItemModel> productdetailItemList =
      RxList.generate(2, (index) => DoctordetailItemModel());
}
