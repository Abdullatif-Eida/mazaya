import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiceProviderDetails extends StatelessWidget {
  const ServiceProviderDetails({super.key});

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
                onTap: () {
                  Navigator.of(context).pop();
                }),
            title: AppbarTitle(text: "صيدلية البيرق الشامخ".tr, margin: getMargin(left: 16)),
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
                              Image.network(
                                "https://mazaya.care/wp-content/uploads/elementor/thumbs/R5IqeKIwR6i2CYSEcxc0_2WfgpR9q6iabLSIe-q4fmp87zsthxgvmex2wawf4ijuq1o1xy7cnu1pavr8.jpg",
                                height: 200,
                                fit: BoxFit.fill,
                              ),
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
                                      child: Text("معلومات التواصل".tr,
                                          maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtSFProDisplaySemibold21Black900)),
                                  Padding(
                                      padding: getPadding(top: 0),
                                      child: Column(
                                        children: [
                                          GestureDetector(
                                            child: Row(
                                              children: [Icon(Icons.house), Text(" مبارك الكبير- صباح السالم".tr, style: AppStyle.txtSubheadGray600)],
                                            ),
                                            onTap: () {
                                              launchUrl(
                                                Uri.parse("https://www.google.com/maps/search/?api=1&query=37.3230,-122.0312"),
                                                mode: LaunchMode.externalApplication,
                                              );
                                            },
                                          ),
                                          GestureDetector(
                                            child: Row(
                                              children: [Icon(Icons.phone), Text(" 98774580".tr, style: AppStyle.txtSubheadGray600)],
                                            ),
                                            onTap: () {
                                              launchUrl(
                                                Uri.parse("tel://98774580"),
                                                mode: LaunchMode.externalApplication,
                                              );
                                            },
                                          ),
                                          GestureDetector(
                                            child: Row(
                                              children: [Icon(Icons.language), Text(" الموقع الإلكتروني".tr, style: AppStyle.txtSubheadGray600)],
                                            ),
                                            onTap: () {
                                              launchUrl(
                                                Uri.parse(
                                                    "https://linktr.ee/bairaq.shamekh?utm_source=linktree_profile_share&ltsid=240b85b3-baa5-4204-83ed-f422a16b7117"),
                                                mode: LaunchMode.externalApplication,
                                              );
                                            },
                                          ),
                                        ],
                                      )),
                                  SizedBox(height: 10),
                                  Container(
                                      child: Text("التفاصيل".tr,
                                          maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtSFProDisplaySemibold21Black900)),
                                  Padding(
                                      padding: getPadding(top: 0),
                                      child: Text("20% - تخفيض على جميع الخدمات (ماعدا الادوية المسعرة من وزارة الصحة)".tr,
                                          style: AppStyle.txtSubheadGray600)),
                                  SizedBox(height: 3),
                                  Padding(
                                      padding: getPadding(top: 0),
                                      child: Text(
                                          "15% -قسم الاشعة التشخيصية والسونار: علي كل الخدمات السونار والاشعة العادي فقط ( فحص الثدي المامو جرام = 45 د.ك فحص هشاشة العظام =30 د.ك )"
                                              .tr,
                                          style: AppStyle.txtSubheadGray600)),
                                  SizedBox(height: 3),
                                  Padding(
                                      padding: getPadding(top: 0),
                                      child: Text("20% - تخفيض على جميع الخدمات (ماعدا الادوية المسعرة من وزارة الصحة)".tr,
                                          style: AppStyle.txtSubheadGray600)),
                                  SizedBox(height: 10),
                                  Container(
                                      child: Text("التصنيفات".tr,
                                          maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtSFProDisplaySemibold21Black900)),
                                  Padding(padding: getPadding(top: 0), child: Text("صيدلية".tr, style: AppStyle.txtSubheadGray600)),
                                  SizedBox(height: 10),
                                  Container(
                                      child: Text("الموقع".tr,
                                          maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtSFProDisplaySemibold21Black900)),
                                  Padding(
                                    padding: getPadding(top: 0),
                                    child: Image.asset("assets/images/hero_directions_api.png"),
                                  ),
                                ]))),
                  ])),
            ])));
  }
}
