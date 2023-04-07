// ignore_for_file: must_be_immutable

import 'package:shoes_app/presentation/payment_done_dialog/controller/payment_done_controller.dart';
import 'package:shoes_app/presentation/payment_done_dialog/payment_done_dialog.dart';

import '../cart_screen/widgets/cart_item_widget.dart';
import '../home_screen_container_screen/controller/home_screen_container_controller.dart';
import 'controller/cart_controller.dart';
import 'models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:shoes_app/widgets/custom_text_form_field.dart';

import 'models/cart_model.dart';

class CartScreen extends StatelessWidget {
  CartController controller = Get.put(CartController(CartModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                title: AppbarTitle(text: "السلة".tr, margin: getMargin(left: 16, top: 16, bottom: 16)),
                styleType: Style.bgFillWhiteA700),
            body: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                    width: double.maxFinite,
                    padding: getPadding(top: 10),
                    child: ListView(
                      children: [
                        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                          Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(10));
                              },
                              itemCount: controller.cartModelObj.value.cartItemList.length,
                              itemBuilder: (context, index) {
                                CartItemModel model = controller.cartModelObj.value.cartItemList[index];
                                return CartItemWidget(model, index);
                              })),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(top: 10, bottom: 100),
                                  padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                                  decoration: AppDecoration.white,
                                  child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                    CustomTextFormField(
                                      // focusNode: FocusNode(),
                                      controller: controller.group169Controller,
                                      hintText: "كود الخصم".tr,
                                      margin: getMargin(bottom: 6),
                                      textInputAction: TextInputAction.done,
                                      suffix: CustomButton(
                                          onTap: () {
                                            //  Get.toNamed(AppRoutes.couponScreen);
                                          },
                                          margin: getMargin(right: 8, top: 1, bottom: 1, left: 8),
                                          height: getVerticalSize(36),
                                          width: getHorizontalSize(141),
                                          text: "طبق كود الخصم".tr,
                                          padding: ButtonPadding.PaddingAll6,
                                          fontStyle: ButtonFontStyle.SFUITextSemibold14WhiteA700),
                                      suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(
                                          36,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(top: 16),
                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                        Text("المجموع".tr,
                                            overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900),
                                        Text("43".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)
                                      ]),
                                    ),
                                    Padding(
                                        padding: getPadding(top: 16),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                          Text("الخصة".tr,
                                              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900),
                                          Text("200".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)
                                        ])),
                                    Padding(
                                        padding: getPadding(top: 16),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                          Text("المجموع".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtHeadline),
                                          Text("41".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)
                                        ]))
                                  ]))),
                        ]),
                      ],
                    )),
                CustomButton(
                    onTap: () {
                      // Get.toNamed(AppRoutes.selectAddressScreen);
                      Get.dialog(AlertDialog(
                        backgroundColor: Colors.transparent,
                        contentPadding: EdgeInsets.zero,
                        insetPadding: EdgeInsets.only(left: 0),
                        content: PaymentDoneDialog(
                          Get.put(
                            PaymentDoneController(),
                          ),
                        ),
                      ));
                    },
                    height: getVerticalSize(50),
                    text: "شراء المنتجات".tr,
                    margin: getMargin(left: 20, bottom: 24, right: 20)),
              ],
            )));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
