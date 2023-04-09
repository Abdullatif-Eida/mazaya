import 'dart:io';

import 'package:flutter/services.dart';
import 'package:shoes_app/presentation/mazaya/cards.dart';
import 'package:shoes_app/presentation/mazaya/offer.dart';
import 'package:shoes_app/presentation/mazaya/points.dart';
import 'package:shoes_app/presentation/mazaya/service_providers/service_providers.dart';

import '../home_screen_container_screen/controller/home_screen_container_controller.dart';
import 'controller/my_profile_controller.dart';
import 'models/my_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MyProfilePage extends StatelessWidget {
  MyProfileController controller = Get.put(MyProfileController(MyProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(58),
                leadingWidth: 44,
                leading: GetBuilder<HomeScreenContainerController>(
                  init: HomeScreenContainerController(),
                  builder: (controller) => AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowright,
                      margin: getMargin(left: 0, top: 17, bottom: 17),
                      onTap: () {
                        controller.change(0);
                      }),
                ),
                title: AppbarTitle(text: "الملف الشخصي".tr, margin: getMargin(left: 16)),
                styleType: Style.bgFillWhiteA700),
            body: ListView(physics: BouncingScrollPhysics(), children: [
              Container(
                  width: double.maxFinite,
                  child: Container(
                      padding: getPadding(top: 16, bottom: 16, left: 16, right: 16),
                      decoration: AppDecoration.white,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, children: [
                        Center(
                          child: CustomImageView(
                              imagePath: ImageConstant.imgEllipse150,
                              height: getSize(80),
                              width: getSize(80),
                              radius: BorderRadius.circular(getHorizontalSize(40))),
                        ),
                        Padding(
                            padding: getPadding(top: 8),
                            child: Text("أحمد أحمد جاسم".tr,
                                overflow: TextOverflow.ellipsis, textAlign: TextAlign.right, style: AppStyle.txtBodyBlack900)),
                        Padding(
                            padding: getPadding(top: 6),
                            child: Text("ahmedahmed@gmail.com".tr,
                                overflow: TextOverflow.ellipsis, textAlign: TextAlign.right, style: AppStyle.txtSFUITextRegular15Gray600)),
                        Padding(
                            padding: getPadding(top: 6),
                            child: Text("عدد النقاط المتوفرة: 15".tr,
                                overflow: TextOverflow.ellipsis, textAlign: TextAlign.right, style: AppStyle.txtSFUITextRegular15Gray600)),
                      ]))),
              Container(
                  width: double.maxFinite,
                  margin: getMargin(top: 10),
                  padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                  decoration: AppDecoration.txtFillWhiteA700,
                  child: Text("العامة".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.right, style: AppStyle.txtHeadline)),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.settingScreen);
                },
                child: Container(
                    width: double.maxFinite,
                    margin: getMargin(top: 1),
                    padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                    decoration: AppDecoration.white,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomImageView(svgPath: ImageConstant.imgSettingsBlack900, height: getSize(24), width: getSize(24)),
                      Padding(
                          padding: getPadding(left: 15, top: 3, bottom: 2),
                          child: Text("الإعدادات ".tr,
                              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                      Spacer(),
                      CustomImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(24), width: getSize(24))
                    ])),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.notificationPage);
                },
                child: Container(
                    width: double.maxFinite,
                    margin: getMargin(top: 1),
                    padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                    decoration: AppDecoration.white,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomImageView(svgPath: ImageConstant.imgLockBlack900, height: getSize(24), width: getSize(24)),
                      Padding(
                          padding: getPadding(left: 15, top: 2, bottom: 3),
                          child: Text("الإشعارات ".tr,
                              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                      Spacer(),
                      CustomImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(24), width: getSize(24))
                    ])),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.checkOutThreeScreen);
                },
                child: Container(
                    width: double.maxFinite,
                    margin: getMargin(top: 1),
                    padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                    decoration: AppDecoration.white,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomImageView(svgPath: ImageConstant.imgClockBlack900, height: getSize(24), width: getSize(24)),
                      Padding(
                          padding: getPadding(left: 15, top: 3, bottom: 2),
                          child: Text("الطلبات ".tr,
                              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                      Spacer(),
                      CustomImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(24), width: getSize(24))
                    ])),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ServiceProvider()));
                },
                child: Container(
                    width: double.maxFinite,
                    margin: getMargin(top: 1),
                    padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                    decoration: AppDecoration.white,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Icon(Icons.list),
                      Padding(
                          padding: getPadding(left: 15, top: 3, bottom: 2),
                          child: Text(" مزودي خدمة مزايا",
                              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                      Spacer(),
                      CustomImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(24), width: getSize(24))
                    ])),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Offer()));
                },
                child: Container(
                    width: double.maxFinite,
                    margin: getMargin(top: 1),
                    padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                    decoration: AppDecoration.white,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Icon(Icons.list),
                      Padding(
                          padding: getPadding(left: 15, top: 3, bottom: 2),
                          child: Text(" أحدث العروض",
                              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                      Spacer(),
                      CustomImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(24), width: getSize(24))
                    ])),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Points()));
                },
                child: Container(
                    width: double.maxFinite,
                    margin: getMargin(top: 1),
                    padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                    decoration: AppDecoration.white,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Icon(Icons.list),
                      Padding(
                          padding: getPadding(left: 15, top: 3, bottom: 2),
                          child: Text(" النقاط",
                              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                      Spacer(),
                      CustomImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(24), width: getSize(24))
                    ])),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cards()));
                },
                child: Container(
                    width: double.maxFinite,
                    margin: getMargin(top: 1),
                    padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                    decoration: AppDecoration.white,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Icon(Icons.list),
                      Padding(
                          padding: getPadding(left: 15, top: 3, bottom: 2),
                          child: Text("بطاقات مزايا ",
                              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                      Spacer(),
                      CustomImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(24), width: getSize(24))
                    ])),
              ),
              for (var item in ["أسئلة شائعة ", "انضم الى شبكتنا ", "تواصل معنا "])
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      width: double.maxFinite,
                      margin: getMargin(top: 1),
                      padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                      decoration: AppDecoration.white,
                      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Icon(Icons.list),
                        Padding(
                            padding: getPadding(left: 15, top: 3, bottom: 2),
                            child: Text(item.tr,
                                overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                        Spacer(),
                        CustomImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(24), width: getSize(24))
                      ])),
                ),
              GestureDetector(
                onTap: () {
                  PrefUtils.setLogin(false);
                  Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.loginScreen, (Route<dynamic> route) => false);
                },
                child: Container(
                    width: double.maxFinite,
                    margin: getMargin(top: 1),
                    padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                    decoration: AppDecoration.white,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Icon(Icons.list),
                      Padding(
                          padding: getPadding(left: 15, top: 3, bottom: 2),
                          child: Text("تسجيل الخروج ".tr,
                              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                      Spacer(),
                      Icon(Icons.logout, color: Colors.red),
                    ])),
              ),
              Container(
                  width: double.maxFinite,
                  margin: getMargin(top: 16),
                  padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                  decoration: AppDecoration.txtFillWhiteA700,
                  child: Text("التطبيق".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.right, style: AppStyle.txtHeadline)),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.appNavigationScreen);
                },
                child: Container(
                    width: double.maxFinite,
                    margin: getMargin(top: 1),
                    padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                    decoration: AppDecoration.white,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomImageView(svgPath: ImageConstant.imgLockBlack90024x24, height: getSize(24), width: getSize(24)),
                      Padding(
                          padding: getPadding(left: 15, top: 3, bottom: 2),
                          child: Text("السياسات و الأحكام ".tr,
                              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                      Spacer(),
                      CustomImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(24), width: getSize(24))
                    ])),
              ),
              Container(
                  width: double.maxFinite,
                  margin: getMargin(top: 1, bottom: 5),
                  padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                  decoration: AppDecoration.white,
                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(svgPath: ImageConstant.imgWarningBlack900, height: getSize(24), width: getSize(24)),
                    Padding(
                        padding: getPadding(left: 15, top: 2, bottom: 3),
                        child: Text("شروط الإستخدام ".tr,
                            overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black900)),
                    Spacer(),
                    CustomImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(24), width: getSize(24))
                  ]))
            ])));
  }

  onTapArrowleft14() {
    if (Platform.isIOS) {
      exit(0);
    } else {
      SystemNavigator.pop();
    }
  }
}
