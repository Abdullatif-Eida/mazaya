import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/core/utils/validation_functions.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:shoes_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  static final GlobalKey<FormState> _forgortformKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _forgortformKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 20, top: 16, right: 20, bottom: 14),
                    child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Stack(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: getSize(24),
                                width: getSize(24),
                                onTap: () {
                                  onTapImgArrowleft();
                                }),
                            Padding(
                              padding: getPadding(top: 16),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: CustomImageView(imagePath: ImageConstant.logo, height: getSize(80)),
                              ),
                            )
                          ])),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Text("نسيت كلمة السر".tr,
                              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextSemibold27)),
                      Padding(
                          padding: getPadding(top: 40),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                            Text("البريد الإلكتروني".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900),
                            CustomTextFormField(
                                suffix: Container(
                                  margin: getMargin(
                                    left: 12,
                                    top: 12,
                                    right: 16,
                                    bottom: 12,
                                  ),
                                  child: SizedBox(),
                                ),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(
                                      48,
                                    ),
                                    minHeight: getVerticalSize(
                                      48,
                                    )),
                                focusNode: FocusNode(),
                                controller: controller.group124Controller,
                                hintText: "أدخل البريد الإلكتروني".tr,
                                margin: getMargin(top: 8),
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || (!isValidEmail(value, isRequired: true))) {
                                    return "الرجاء إدخال بريد إلكتروني صحيح";
                                  }
                                  return null;
                                })
                          ])),
                      CustomButton(
                          onTap: () {
                            if (_forgortformKey.currentState!.validate()) {
                              Get.toNamed(AppRoutes.varificationCodeScreen);
                            }
                          },
                          height: getVerticalSize(48),
                          text: "تابع".tr,
                          margin: getMargin(top: 32)),
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
