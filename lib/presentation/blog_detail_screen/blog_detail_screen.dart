import 'controller/blog_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';

class BlogDetailScreen extends GetWidget<BlogDetailController> {
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
                    onTap: onTapArrowleft8),
                title: AppbarTitle(text: "تفاصيل المدونة".tr, margin: getMargin(left: 16)),
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: ListView(primary: true, shrinkWrap: false, children: [
                  Padding(
                      padding: getPadding(top: 10),
                      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                                decoration: AppDecoration.white,
                                child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.logo,
                                      height: getVerticalSize(200),
                                      width: getHorizontalSize(200),
                                      radius: BorderRadius.circular(getHorizontalSize(8)))
                                ]))),
                        Container(
                            width: double.maxFinite,
                            margin: getMargin(top: 10),
                            child: Container(
                                padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                                decoration: AppDecoration.white,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin: getMargin(right: 22),
                                          child: Text("المدونة".tr,
                                              maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtSFProDisplaySemibold21Black900)),
                                      Padding(
                                          padding: getPadding(top: 16),
                                          child: Text("قبل أيام".tr,
                                              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSubheadGray600)),
                                      Container(
                                          margin: getMargin(
                                            top: 16,
                                          ),
                                          child:
                                              Text("1".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black9001)),
                                      Container(
                                          margin: getMargin(
                                            top: 16,
                                          ),
                                          child:
                                              Text("2".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black9001)),
                                      Container(
                                          margin: getMargin(
                                            top: 16,
                                          ),
                                          child:
                                              Text("3".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black9001)),
                                      Container(
                                          margin: getMargin(
                                            top: 16,
                                          ),
                                          child:
                                              Text("4".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black9001)),
                                      Container(
                                          margin: getMargin(
                                            top: 16,
                                          ),
                                          child:
                                              Text("5".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Black9001))
                                    ]))),
                      ])),
                ]))));
  }

  onTapArrowleft8() {
    Get.back();
  }
}
