import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoes_app/core/utils/color_constant.dart';
import 'package:shoes_app/core/utils/image_constant.dart';
import 'package:shoes_app/core/utils/size_utils.dart';
import 'package:shoes_app/presentation/home_screen_container_screen/controller/home_screen_container_controller.dart';
import 'package:shoes_app/presentation/home_screen_page/controller/home_screen_controller.dart';
import 'package:shoes_app/presentation/product_detail_screen/controller/product_detail_controller.dart';
import 'package:shoes_app/presentation/product_detail_screen/models/productdetail_item_model.dart';
import 'package:shoes_app/presentation/product_detail_screen/models/sliderrectangleseventyseven_item_model.dart';
import 'package:shoes_app/presentation/product_detail_screen/widgets/productdetail_item_widget.dart';
import 'package:shoes_app/presentation/product_detail_screen/widgets/sliderrectangleseventyseven_item_widget.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:shoes_app/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/app_export.dart';

// ignore: must_be_immutable
class DoctorDetailsScreen extends GetWidget<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          height: getVerticalSize(49),
          leadingWidth: 44,
          leading: AppbarImage(
              height: getSize(24),
              width: getSize(24),
              svgPath: ImageConstant.imgArrowright,
              margin: getMargin(left: 20, top: 17, bottom: 8),
              onTap: onTapArrowleft2),
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
                child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  width: double.infinity,
                  decoration: AppDecoration.white,
                  padding: getPadding(bottom: 14),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    CarouselSlider.builder(
                        options: CarouselOptions(
                            height: getVerticalSize(270),
                            initialPage: 0,
                            viewportFraction: 1.0,
                            enableInfiniteScroll: false,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {}),
                        itemCount: 1,
                        itemBuilder: (context, index, realIndex) {
                          SliderrectangleseventysevenItemModel model = RxList.generate(3, (index) => SliderrectangleseventysevenItemModel())[index];
                          return SliderrectangleseventysevenItemWidget(model);
                        })
                  ])),
              Container(
                  width: double.maxFinite,
                  child: Container(
                      padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                      decoration: AppDecoration.white,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                        Padding(
                            padding: getPadding(top: 2),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                Row(children: [
                                  RatingBar(
                                    ignoreGestures: true,
                                    initialRating: 4,
                                    direction: Axis.horizontal,
                                    allowHalfRating: false,
                                    itemCount: 5,
                                    itemSize: getSize(15),
                                    ratingWidget: RatingWidget(
                                      full: CustomImageView(
                                          svgPath: ImageConstant.imgStarAmber600,
                                          height: getSize(15),
                                          width: getSize(15),
                                          margin: getMargin(top: 1, bottom: 1)),
                                      half: CustomImageView(
                                          svgPath: ImageConstant.imgStarAmber600,
                                          height: getSize(15),
                                          width: getSize(15),
                                          margin: getMargin(top: 1, bottom: 1)),
                                      empty: CustomImageView(
                                          svgPath: ImageConstant.imgVuesaxlinearstar,
                                          height: getSize(15),
                                          width: getSize(15),
                                          margin: getMargin(top: 1, bottom: 1)),
                                    ),
                                    onRatingUpdate: (double value) {},
                                  ),
                                  Padding(
                                      padding: getPadding(left: 8),
                                      child: Text("التقيم".tr,
                                          overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900))
                                ]),
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: Text("الأسم".tr,
                                        overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextSemibold27))
                              ]),
                            ])),
                        Container(
                            margin: getMargin(top: 16),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "الوصف".tr,
                                      style: TextStyle(
                                          color: ColorConstant.black900, fontSize: getFontSize(17), fontFamily: 'PNU', fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "".tr,
                                      style: TextStyle(
                                          color: ColorConstant.black900, fontSize: getFontSize(17), fontFamily: 'PNU', fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "".tr,
                                      style: TextStyle(
                                          color: ColorConstant.black900, fontSize: getFontSize(17), fontFamily: 'PNU', fontWeight: FontWeight.w400))
                                ]),
                                textAlign: TextAlign.left)),
                        GetBuilder<ProductDetailController>(
                          init: ProductDetailController(),
                          builder: (controller) => Container(
                            height: getSize(0),
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                primary: false,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  String size = controller.productDetailModelObj.value.sizeList[index];
                                  return Container();
                                },
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    width: getVerticalSize(16),
                                  );
                                },
                                itemCount: controller.productDetailModelObj.value.sizeList.length),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text("معلومات التواصل".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                        SizedBox(height: 15),
                        Text("الموقع".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                        Image.asset("assets/images/hero_directions_api.png"),
                        Padding(
                            padding: getPadding(top: 24),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                              Text("المراجعات".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                              Padding(
                                  padding: getPadding(top: 2),
                                  child: Text("أطلع على جميع المراجعات".tr,
                                      overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900))
                            ])),
                        Padding(
                            padding: getPadding(top: 16, bottom: 104),
                            child: ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(height: getVerticalSize(17));
                                },
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  ProductdetailItemModel model = RxList.generate(2, (index) => ProductdetailItemModel())[index];
                                  return ProductdetailItemWidget(model);
                                })),
                      ])))
            ])),
            GetBuilder<HomeScreenContainerController>(
              init: HomeScreenContainerController(),
              builder: (controller) => CustomButton(
                  onTap: () {
                    controller.change(2);
                    Get.toNamed(AppRoutes.homeScreenContainerScreen);
                  },
                  height: getVerticalSize(48),
                  text: "أخذ موعد".tr,
                  margin: getMargin(bottom: 24, right: 20, left: 20)),
            ),
          ],
        ));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
