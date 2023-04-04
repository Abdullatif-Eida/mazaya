import 'controller/payment_done_controller.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class PaymentDoneDialog extends StatelessWidget {
  PaymentDoneDialog(this.controller);

  PaymentDoneController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        388,
      ),
      padding: getPadding(
        left: 74,
        top: 24,
        right: 74,
        bottom: 24,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder36,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgCheckmark,
            height: getSize(
              100,
            ),
            width: getSize(
              100,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 16,
            ),
            child: Text(
              "تم الدفع بنجاح".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFUITextSemibold18Black900,
            ),
          ),
          Container(
            margin: getMargin(
              top: 14,
            ),
            child: Text(
              "شكراً لشرائك من المنتجات".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtBody,
            ),
          ),
          CustomButton(
            onTap: () {
              Get.toNamed(AppRoutes.homeScreenContainerScreen);
              Navigator.of(context).pop();
            },
            height: getVerticalSize(
              50,
            ),
            text: "الرجوع".tr,
            margin: getMargin(
              top: 32,
            ),
          ),
        ],
      ),
    );
  }
}
