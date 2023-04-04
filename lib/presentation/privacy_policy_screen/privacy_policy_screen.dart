import 'controller/privacy_policy_controller.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';

class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(58),
                leadingWidth: 44,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowright,
                    margin: getMargin(left: 0, top: 17, bottom: 17),
                    onTap: onTapArrowleft17),
                title: AppbarTitle(text: "السياسات و الأحكام".tr, margin: getMargin(left: 16)),
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 10, bottom: 10),
                child: Column(children: [
                  Container(
                      width: double.maxFinite,
                      child: Container(
                          padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                          decoration: AppDecoration.white,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                            Text("البينات".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                            Container(
                                margin: getMargin(top: 16),
                                child: Text("الوصف".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15))
                          ]))),
                  Container(
                      width: double.maxFinite,
                      child: Container(
                          margin: getMargin(top: 10),
                          padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                          decoration: AppDecoration.white,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "".tr,
                                      style: TextStyle(
                                          color: ColorConstant.black900,
                                          fontSize: getFontSize(17),
                                          fontFamily: 'SF UI Text',
                                          fontWeight: FontWeight.w700)),
                                  TextSpan(
                                      text: "".tr,
                                      style: TextStyle(
                                          color: ColorConstant.black900,
                                          fontSize: getFontSize(17),
                                          fontFamily: 'SF UI Text',
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "حماية البينات".tr,
                                      style: TextStyle(
                                          color: ColorConstant.black900,
                                          fontSize: getFontSize(17),
                                          fontFamily: 'SF UI Text',
                                          fontWeight: FontWeight.w700))
                                ]),
                                textAlign: TextAlign.left),
                            Container(
                                margin: getMargin(top: 16),
                                child: Text("الوصف".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15))
                          ]))),
                  Container(
                      width: double.maxFinite,
                      child: Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 10),
                          padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                          decoration: AppDecoration.white,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                            Text("التعهدات".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                            Container(
                                margin: getMargin(top: 16),
                                child: Text("الوصف".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15))
                          ]))),
                ]))));
  }

  onTapArrowleft17() {
    Get.back();
  }
}
