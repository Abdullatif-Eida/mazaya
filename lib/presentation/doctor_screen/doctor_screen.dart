import 'package:shoes_app/presentation/doctor_detail_screen/doctor_detail_screen.dart';

import '../filter_bottomsheet/controller/filter_controller.dart';
import '../filter_bottomsheet/filter_bottomsheet.dart';
import '../home_screen_page/controller/home_screen_controller.dart';
import '../home_screen_page/models/home_screen_model.dart';
import '../home_screen_page/models/homescreen_item_model.dart';
import '../home_screen_page/widgets/homescreen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';

import '../my_favorite_page/controller/my_favorite_controller.dart';
import '../my_favorite_page/models/my_favorite_model.dart';

// ignore: must_be_immutable
class DoctorScreen extends GetWidget<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          height: getVerticalSize(58),
          leadingWidth: 44,
          leading: AppbarImage(
              height: getSize(24),
              width: getSize(24),
              svgPath: ImageConstant.imgArrowright,
              margin: getMargin(left: 0, top: 17, bottom: 17),
              onTap: () {
                Get.back();
                //  controller.change(0);
              }),
          title: AppbarTitle(text: "الدكاترة".tr, margin: getMargin(left: 16)),
          actions: [
            GestureDetector(
              onTap: () {
                Get.bottomSheet(
                  FilterBottomsheet(
                    Get.put(
                      FilterController(),
                    ),
                  ),
                  isScrollControlled: true,
                );
              },
              child: AppbarImage(height: getSize(24), width: getSize(24), margin: getMargin(left: 20, top: 17, right: 20, bottom: 17)),
            )
          ],
          styleType: Style.bgFillWhiteA700),
      body: Padding(
        padding: getPadding(left: 20, top: 15, right: 20),
        child: GridView.builder(
          shrinkWrap: true,
          padding: getPadding(bottom: 15),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: getVerticalSize(
              246,
            ),
            crossAxisCount: 2,
            mainAxisSpacing: getHorizontalSize(
              16,
            ),
            crossAxisSpacing: getHorizontalSize(
              16,
            ),
          ),
          itemCount: controller.homeScreenModelObj.value.doctors.length,
          itemBuilder: (context, index) {
            HomescreenItemModel model = controller.homeScreenModelObj.value.doctors[index];
            return GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.doctorDetailScreen);
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => DoctorDetailsScreen()));
              },
              child: HomescreenItemWidget(
                model,
              ),
            );
          },
        ),
      ),
    );
  }

  onTapArrowleft1() {
    Get.back();
  }
}
