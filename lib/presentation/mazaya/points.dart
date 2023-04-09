import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:intl/intl.dart';
import 'package:shoes_app/core/utils/color_constant.dart';
import 'package:shoes_app/core/utils/image_constant.dart';
import 'package:shoes_app/core/utils/size_utils.dart';
import 'package:shoes_app/presentation/home_screen_container_screen/controller/home_screen_container_controller.dart';
import 'package:shoes_app/presentation/product_detail_screen/product_detail_screen.dart';
import 'package:shoes_app/routes/app_routes.dart';
import 'package:shoes_app/theme/app_decoration.dart';
import 'package:shoes_app/theme/app_style.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:shoes_app/widgets/custom_image_view.dart';
import 'package:url_launcher/url_launcher.dart';

class Points extends StatelessWidget {
  const Points({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            height: getVerticalSize(58),
            leadingWidth: 44,
            actions: [
              IconButton(
                  onPressed: () {
                    launchUrl(
                      Uri.parse("http://mazaya-vip.com/"),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  icon: Icon(Icons.language, color: Colors.black))
            ],
            leading: GetBuilder<HomeScreenContainerController>(
              init: HomeScreenContainerController(),
              builder: (controller) => AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgArrowright,
                  margin: getMargin(left: 0, top: 17, bottom: 17),
                  onTap: () {
                    Navigator.of(context).pop();
                  }),
            ),
            title: AppbarTitle(text: "النقاط", margin: getMargin(left: 16)),
            styleType: Style.bgFillWhiteA700),
        body: SafeArea(
            child: Column(
          children: [
            Container(
                width: double.maxFinite,
                child: Container(
                    padding: getPadding(top: 16, bottom: 16, left: 16, right: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 1,
                          color: Color(0x32171717),
                          offset: Offset(0, 1),
                        )
                      ],
                      borderRadius: BorderRadius.circular(16),
                    ),
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
                          child:
                              Text("أحمد أحمد جاسم".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBodyBlack900)),
                      Padding(
                          padding: getPadding(top: 6),
                          child: Text("ahmedahmed@gmail.com".tr,
                              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Gray600)),
                      Padding(
                          padding: getPadding(top: 6),
                          child: Text("عدد النقاط المتوفرة: 15".tr,
                              overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFUITextRegular15Gray600)),
                    ]))),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  for (int item in [1, 2, -3, -4, 5, 6])
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 1,
                              color: Color(0x32171717),
                              offset: Offset(0, 1),
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(item.toString().contains("-") ? Icons.north_east_rounded : Icons.south_west_rounded,
                                        size: 40, color: item.toString().contains("-") ? Colors.red : const Color(0XFF2ae010)),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "نوع الخدمة",
                                              style: const TextStyle(
                                                color: Color(0xFF8B97A2),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              DateFormat(
                                                "MMMM, d, hh:mm a",
                                              ).format(DateTime.now()),
                                              textAlign: TextAlign.end,
                                              style: const TextStyle(
                                                color: Color(0xFF8B97A2),
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "الأسم",
                                              style: const TextStyle(
                                                color: Color(0xFF8B97A2),
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            Text(
                                              '$item النقاط',
                                              textAlign: TextAlign.end,
                                              style: TextStyle(
                                                color: item.toString().contains("-") ? Colors.red : const Color(0XFF2ae010),
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        )));
  }
}
