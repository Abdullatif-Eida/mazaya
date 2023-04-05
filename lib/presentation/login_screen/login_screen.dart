import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';

import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/core/utils/validation_functions.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:shoes_app/widgets/custom_text_form_field.dart';

class LoginScreen extends GetWidget<LoginController> {
  static final GlobalKey<FormState> _loginformKey = GlobalKey<FormState>();

  Future<bool> _requestPop() {
    if (Platform.isIOS) {
      exit(0);
    } else {
      SystemNavigator.pop();
    }
    return new Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _requestPop,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteA700,
          body: Form(
            key: _loginformKey,
            child: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 20,
                top: 32,
                right: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.logo,
                    height: getSize(
                      80,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 16,
                    ),
                    child: Text(
                      "تسجيل الدخول".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFUITextSemibold27,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 16,
                    ),
                    child: Text(
                      "أدخل معلوماتك لتسجيل الدخول".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtBodyGray600,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 40,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "البريد الإلكتروني".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: AppStyle.txtBodyBlack900,
                        ),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group110Controller,
                          hintText: "أدخل بريدك الإلكتروني".tr,
                          margin: getMargin(
                            top: 8,
                          ),
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || (!isValidEmail(value, isRequired: true))) {
                              return "الرجاء إدخال بريد إلكتروني صحيح";
                            }
                            return null;
                          },
                          padding: TextFormFieldPadding.PaddingT13_1,
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
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "كلمة السر".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBodyBlack900,
                        ),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group111Controller,
                          hintText: "أدخل كلمة السر",
                          margin: getMargin(
                            top: 8,
                          ),
                          padding: TextFormFieldPadding.PaddingT13_1,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress,
                          suffix: Container(
                            margin: getMargin(
                              left: 12,
                              top: 12,
                              right: 16,
                              bottom: 12,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgEye,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(
                              48,
                            ),
                          ),
                          validator: (value) {
                            if (value == null) {
                              return "الرجاء إدخال كلمة سر";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        top: 8,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.forgotPasswordScreen);
                        },
                        child: Text(
                          "نسيت كلمة السر".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtBodyBlack900,
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    onTap: () {
                      if (_loginformKey.currentState!.validate()) {
                        PrefUtils.setLogin(true);
                        Get.toNamed(AppRoutes.homeScreenContainerScreen);
                      }
                    },
                    variant: ButtonVariant.Black,
                    height: getVerticalSize(
                      48,
                    ),
                    text: "تسجيل الدخول".tr,
                    margin: getMargin(
                      top: 32,
                    ),
                  ),
                  Spacer(),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "اذا كنت لا تملك حساب".tr,
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              17,
                            ),
                            fontFamily: 'SF UI Text',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: " ",
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              18,
                            ),
                            fontFamily: 'SF UI Text',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () => Get.toNamed(AppRoutes.registerScreen),
                          text: "سجل الان".tr,
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: getFontSize(
                              18,
                            ),
                            fontFamily: 'SF UI Text',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: getVerticalSize(24),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
