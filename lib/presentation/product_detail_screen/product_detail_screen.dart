import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoes_app/presentation/home_screen_container_screen/controller/home_screen_container_controller.dart';

import '../../widgets/custom_bottom_bar.dart';
import '../product_detail_screen/widgets/productdetail_item_widget.dart';
import '../product_detail_screen/widgets/sliderrectangleseventyseven_item_widget.dart';
import 'controller/product_detail_controller.dart';
import 'models/productdetail_item_model.dart';
import 'models/sliderrectangleseventyseven_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:shoes_app/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailScreen extends GetWidget<ProductDetailController> {
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
            actions: [
              AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgContrastWhiteA700,
                  margin: getMargin(left: 20, right: 20, top: 17, bottom: 8))
            ]),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                      width: double.infinity,
                      decoration: AppDecoration.white,
                      padding: getPadding(bottom: 14),
                      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                        Obx(() => CarouselSlider.builder(
                            options: CarouselOptions(
                                height: getVerticalSize(270),
                                initialPage: 0,
                                viewportFraction: 1.0,
                                enableInfiniteScroll: false,
                                scrollDirection: Axis.horizontal,
                                onPageChanged: (index, reason) {
                                  controller.silderIndex.value = index;
                                }),
                            itemCount: controller.productDetailModelObj.value.sliderrectangleseventysevenItemList.length,
                            itemBuilder: (context, index, realIndex) {
                              SliderrectangleseventysevenItemModel model =
                                  controller.productDetailModelObj.value.sliderrectangleseventysevenItemList[index];
                              return SliderrectangleseventysevenItemWidget(model);
                            })),
                        Obx(() => Container(
                            height: getVerticalSize(8),
                            margin: getMargin(top: 16),
                            child: AnimatedSmoothIndicator(
                                activeIndex: controller.silderIndex.value,
                                count: controller.productDetailModelObj.value.sliderrectangleseventysevenItemList.length,
                                axisDirection: Axis.horizontal,
                                effect: ScrollingDotsEffect(
                                    spacing: 8,
                                    activeDotColor: ColorConstant.black900,
                                    dotColor: ColorConstant.gray300,
                                    dotHeight: getVerticalSize(8),
                                    dotWidth: getVerticalSize(8)))))
                      ])),
                  Container(
                      width: double.maxFinite,
                      child: Container(
                          margin: getMargin(top: 10),
                          padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                          decoration: AppDecoration.white,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                            Padding(
                                padding: getPadding(top: 2),
                                child:
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, children: [
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
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtSFUITextRegular15Black900))
                                    ]),
                                    Padding(
                                        padding: getPadding(top: 8),
                                        child: Text("الأسم".tr,
                                            overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextSemibold27))
                                  ]),
                                  Text("السعر".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)
                                ])),
                            Container(
                                margin: getMargin(top: 16),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "الوصف".tr,
                                          style: TextStyle(
                                              color: ColorConstant.black900,
                                              fontSize: getFontSize(17),
                                              fontFamily: 'PNU',
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: "".tr,
                                          style: TextStyle(
                                              color: ColorConstant.black900,
                                              fontSize: getFontSize(17),
                                              fontFamily: 'PNU',
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: "".tr,
                                          style: TextStyle(
                                              color: ColorConstant.black900,
                                              fontSize: getFontSize(17),
                                              fontFamily: 'PNU',
                                              fontWeight: FontWeight.w400))
                                    ]),
                                    textAlign: TextAlign.left)),
                            Padding(
                                padding: getPadding(top: 24, right: 45),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                  Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                    Text("التفضيلات".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                                    GetBuilder<ProductDetailController>(
                                      init: ProductDetailController(),
                                      builder: (controller) => Container(
                                        margin: getMargin(top: 16),
                                        height: getVerticalSize(32),
                                        child: ListView.separated(
                                            scrollDirection: Axis.horizontal,
                                            primary: false,
                                            shrinkWrap: true,
                                            itemBuilder: (context, index) {
                                              Color color = controller.productDetailModelObj.value.colorList[index];
                                              return GestureDetector(
                                                onTap: () {
                                                  controller.changeColorIndex(index);
                                                },
                                                child: Container(
                                                  height: getVerticalSize(32),
                                                  width: getVerticalSize(32),
                                                  decoration:
                                                      BoxDecoration(color: color, borderRadius: BorderRadius.circular(getVerticalSize(32) / 2)),
                                                  child: controller.colorIndex.value == index
                                                      ? CustomImageView(
                                                          svgPath: ImageConstant.imagePath + "check.svg",
                                                          margin: getMargin(all: 10),
                                                        )
                                                      : SizedBox(),
                                                ),
                                              );
                                            },
                                            separatorBuilder: (context, index) {
                                              return SizedBox(width: getVerticalSize(8));
                                            },
                                            itemCount: controller.productDetailModelObj.value.colorList.length),
                                      ),
                                    )
                                  ]),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                    Text("العدد".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                                    GetBuilder<ProductDetailController>(
                                      init: ProductDetailController(),
                                      builder: (controller) => Padding(
                                          padding: getPadding(top: 16),
                                          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                            CustomIconButton(
                                                onTap: () {
                                                  controller.removeQuantity();
                                                },
                                                height: 32,
                                                width: 32,
                                                variant: IconButtonVariant.FillBluegray50,
                                                shape: IconButtonShape.RoundedBorder8,
                                                child: CustomImageView(svgPath: ImageConstant.imgMenu)),
                                            Padding(
                                                padding: getPadding(left: 16, right: 16),
                                                child: Text(controller.quantity.toString(),
                                                    overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)),
                                            CustomIconButton(
                                                onTap: () {
                                                  controller.addQuantity();
                                                },
                                                height: 32,
                                                width: 32,
                                                margin: getMargin(left: 15),
                                                variant: IconButtonVariant.FillBluegray50,
                                                shape: IconButtonShape.RoundedBorder8,
                                                child: CustomImageView(svgPath: ImageConstant.imgPlus))
                                          ])),
                                    )
                                  ])
                                ])),
                            Padding(
                                padding: getPadding(top: 24),
                                child: Text("الحجم".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline)),
                            GetBuilder<ProductDetailController>(
                              init: ProductDetailController(),
                              builder: (controller) => Container(
                                margin: getMargin(top: 16),
                                height: getSize(40),
                                child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    primary: false,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      String size = controller.productDetailModelObj.value.sizeList[index];
                                      return GestureDetector(
                                        onTap: () {
                                          controller.changeSizeIndex(index);
                                        },
                                        child: Container(
                                            alignment: Alignment.center,
                                            width: getSize(40),
                                            decoration: controller.sizeIndex.value == index
                                                ? AppDecoration.txtFillBlack900.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8)
                                                : AppDecoration.txtFillBluegray50.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8),
                                            child: Text(size,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: controller.sizeIndex.value == index ? AppStyle.txtBodyWhiteA700 : AppStyle.txtBodyBlack900)),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        width: getVerticalSize(16),
                                      );
                                    },
                                    itemCount: controller.productDetailModelObj.value.sizeList.length),
                              ),
                            ),
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
                                child: Obx(() => ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(height: getVerticalSize(17));
                                    },
                                    itemCount: controller.productDetailModelObj.value.productdetailItemList.length,
                                    itemBuilder: (context, index) {
                                      ProductdetailItemModel model = controller.productDetailModelObj.value.productdetailItemList[index];
                                      return ProductdetailItemWidget(model);
                                    }))),
                          ])))
                ]))),
            GetBuilder<HomeScreenContainerController>(
              init: HomeScreenContainerController(),
              builder: (controller) => CustomButton(
                  onTap: () {
                    controller.change(2);
                    Get.toNamed(AppRoutes.homeScreenContainerScreen);
                  },
                  height: getVerticalSize(48),
                  text: "اضف المنتج الى السلة".tr,
                  margin: getMargin(bottom: 24, right: 20, left: 20)),
            ),
          ],
        ));
  }

  onTapArrowleft2() {
    Get.back();
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Folder:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Category:
        return AppRoutes.categoriesScreen;
      case BottomBarEnum.Lock:
        return AppRoutes.cartScreen;
      case BottomBarEnum.Favoritegray600:
        return AppRoutes.myFavoritePage;
      case BottomBarEnum.User:
        return AppRoutes.myProfilePage;
      default:
        return "/";
    }
  }
}
