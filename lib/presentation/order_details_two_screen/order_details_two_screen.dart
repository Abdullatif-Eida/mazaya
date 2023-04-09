import 'controller/order_details_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';

class OrderDetailsTwoScreen extends GetWidget<OrderDetailsTwoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
            height: getVerticalSize(58),
            leadingWidth: 44,
            leading: AppbarImage(
                height: getSize(24),
                width: getSize(24),
                svgPath: ImageConstant.imgArrowright,
                margin: getMargin(left: 0, top: 17, bottom: 17),
                onTap: onTapArrowleft12),
            title: AppbarTitle(text: "تفاصيل الطلب".tr, margin: getMargin(left: 16)),
            styleType: Style.bgFillWhiteA700),
        body: Container(
            width: double.maxFinite,
            padding: getPadding(top: 10, bottom: 10),
            child: Column(children: [
              Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.white,
                  child: Column(children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: getPadding(left: 20, top: 16, right: 20),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("رقم الطلب: 15646543".tr,
                                      overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                                  Padding(
                                      padding: getPadding(top: 8),
                                      child: Text("تاريخ الطلب 1-1-2022".tr,
                                          overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyGray600)),
                                  Padding(
                                      padding: getPadding(top: 24),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.all(0),
                                                color: ColorConstant.gray100,
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder8),
                                                child: Container(
                                                    height: getSize(90),
                                                    width: getSize(90),
                                                    padding: getPadding(left: 5, top: 4, right: 5, bottom: 4),
                                                    decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant.imageNotFound,
                                                        height: getVerticalSize(82),
                                                        width: getHorizontalSize(80),
                                                        alignment: Alignment.center))),
                                            Padding(
                                                padding: getPadding(top: 4, right: 16),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Text("عصبية".tr,
                                                          overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                                                      Padding(
                                                          padding: getPadding(top: 9),
                                                          child: Text("21".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.left,
                                                              style: AppStyle.txtBodyBlack900)),
                                                      Container(
                                                        alignment: Alignment.center,
                                                        height: getVerticalSize(
                                                          26,
                                                        ),
                                                        width: getHorizontalSize(
                                                          99,
                                                        ),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant.green100, borderRadius: BorderRadius.circular(getHorizontalSize(8))),
                                                        child: Text("تم الاستلام".tr,
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                              color: ColorConstant.green800,
                                                              fontSize: getFontSize(
                                                                15,
                                                              ),
                                                              fontFamily: 'PNU',
                                                              fontWeight: FontWeight.w400,
                                                              height: getVerticalSize(
                                                                1.20,
                                                              ),
                                                            )),
                                                        margin: getMargin(
                                                          top: 8,
                                                        ),
                                                      ),
                                                    ]))
                                          ]),
                                          Text("الكمية 12".tr,
                                              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)
                                        ],
                                      ))
                                ]))),
                    Container(
                        margin: getMargin(top: 24),
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                Container(
                                  height: getVerticalSize(24),
                                  child: Stack(alignment: Alignment.center, children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(bottom: 12, top: 12),
                                            child: SizedBox(child: Divider(thickness: getVerticalSize(2), color: ColorConstant.gray300)))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            alignment: Alignment.center,
                                            width: getSize(24),
                                            height: getSize(24),
                                            decoration: AppDecoration.txtFillGray10001.copyWith(borderRadius: BorderRadiusStyle.txtCircleBorder12),
                                            child: Text("2".tr, overflow: TextOverflow.ellipsis, style: AppStyle.txtSFUITextRegular15Gray60001))),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            alignment: Alignment.center,
                                            width: getSize(24),
                                            height: getSize(24),
                                            decoration: AppDecoration.txtFillGray10001.copyWith(borderRadius: BorderRadiusStyle.txtCircleBorder12),
                                            child: Text("3".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtSFUITextRegular15Gray600))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: getSize(24),
                                          height: getSize(24),
                                          decoration: AppDecoration.txtFillGray10001.copyWith(borderRadius: BorderRadiusStyle.txtCircleBorder12),
                                          child: Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding: getPadding(bottom: 2),
                                                  child: Text("1".tr,
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle.txtSFUITextRegular15Gray60001))),
                                        ))
                                  ]),
                                  padding: getPadding(left: 32, right: 41),
                                ),
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                      Padding(
                                          padding: getPadding(right: 20),
                                          child: Text("تتم المعالجة".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtSFUITextRegular15Gray600)),
                                      Spacer(flex: 45),
                                      Padding(
                                          padding: getPadding(),
                                          child: Text("شحن".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtSFUITextRegular15Gray600)),
                                      Spacer(flex: 54),
                                      Padding(
                                          padding: getPadding(left: 20),
                                          child: Text("تم التسليم".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtSFUITextRegular15Gray600))
                                    ]))
                              ]))
                        ])),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                              margin: getMargin(left: 20, right: 20, bottom: 16, top: 24),
                              padding: getPadding(left: 148, top: 15, right: 148, bottom: 15),
                              decoration: AppDecoration.outlineBlack9001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                              child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                Text("الغاء الطلب".tr,
                                    overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextSemibold14)
                              ])),
                        )),
                  ])),
              Container(
                  width: double.maxFinite,
                  margin: getMargin(top: 10),
                  child: Column(children: [
                    // Container(
                    //     width: double.maxFinite,
                    //     child: Container(
                    //         width: double.maxFinite,
                    //         padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                    //         decoration: AppDecoration.white,
                    //         child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                    //           Text("msg_delivery_address".tr,
                    //               overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                    //           Container(
                    //               margin: getMargin(top: 8, right: 85),
                    //               child: Text("msg_4517_washington".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtBody))
                    //         ]))),
                    Container(
                        margin: getMargin(top: 10),
                        padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                        decoration: AppDecoration.white,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("وصف الطلب".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                    Text("المجموع".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900),
                                    Text("43".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)
                                  ])),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                    Text("الخصم".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900),
                                    Text("2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)
                                  ])),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Divider(height: 0, thickness: getVerticalSize(1), color: ColorConstant.gray300)),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                    Text("المجموع".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                                    Text("40".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)
                                  ])),
                            ]))
                  ])),
            ])));
  }

  onTapArrowleft12() {
    Get.back();
  }
}
