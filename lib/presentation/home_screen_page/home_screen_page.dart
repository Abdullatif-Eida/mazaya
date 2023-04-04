import 'package:shoes_app/presentation/home_screen_container_screen/controller/home_screen_container_controller.dart';

import '../home_screen_page/widgets/homescreen_item_widget.dart';
import '../home_screen_page/widgets/listname_item_widget.dart';
import '../home_screen_page/widgets/listwalkingfitness_item_widget.dart';
import '../home_screen_page/widgets/sliderlovelysportco_item_widget.dart';
import 'controller/home_screen_controller.dart';
import 'models/home_screen_model.dart';
import 'models/homescreen_item_model.dart';
import 'models/listname_item_model.dart';
import 'models/listwalkingfitness_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatelessWidget {
  HomeScreenController controller = Get.put(HomeScreenController(HomeScreenModel().obs));
  HomeScreenContainerController homeScreenContainerController = Get.put(HomeScreenContainerController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            72,
          ),
          leadingWidth: 54,
          leading: AppbarImage(
            height: getSize(
              44,
            ),
            width: getSize(
              44,
            ),
            imagePath: ImageConstant.logo,
            margin: getMargin(left: 10, bottom: 20, top: 20),
          ),
          title: Text(
            "مزايا",
            style: AppStyle.txtHeadline,
          ),
          actions: [
            GestureDetector(
              onTap: () {
                homeScreenContainerController.change(4);
              },
              child: CustomImageView(
                imagePath: ImageConstant.imgEllipse8,
                height: getSize(
                  32,
                ),
                width: getSize(
                  32,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    16,
                  ),
                ),
                margin: getMargin(left: 20, top: 16, right: 20, bottom: 24),
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 20,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextFormField(
                    onTap: () {
                      Get.toNamed(AppRoutes.searchScreen);
                    },
                    controller: controller.groupThreeController,
                    hintText: "ابحث عن المنتج المراد".tr,
                    margin: getMargin(
                      right: 20,
                    ),
                    variant: TextFormFieldVariant.FillGray100,
                    padding: TextFormFieldPadding.PaddingT13_2,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      margin: getMargin(
                        left: 16,
                        top: 12,
                        right: 16,
                        bottom: 12,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgContrast,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        48,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: GetBuilder<HomeScreenController>(
                      init: HomeScreenController(HomeScreenModel().obs),
                      builder: (controller) => CarouselSlider.builder(
                        options: CarouselOptions(
                          height: getVerticalSize(
                            140,
                          ),
                          autoPlay: true,
                          initialPage: 0,
                          viewportFraction: 1,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            controller.onChangeIndex(index);
                          },
                        ),
                        itemCount: controller.homeScreenModelObj.value.sliderlovelysportcoItemList.length,
                        itemBuilder: (context, index, realIndex) {
                          return SliderlovelysportcoItemWidget(controller.homeScreenModelObj.value.sliderlovelysportcoItemList[index]);
                        },
                      ),
                    ),
                  ),
                  GetBuilder<HomeScreenController>(
                    init: HomeScreenController(HomeScreenModel().obs),
                    builder: (controller) => Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: getPadding(right: 20),
                        child: Container(
                          height: getVerticalSize(
                            8,
                          ),
                          margin: getMargin(
                            top: 8,
                          ),
                          child: AnimatedSmoothIndicator(
                            activeIndex: controller.silderIndex.value,
                            count: controller.homeScreenModelObj.value.sliderlovelysportcoItemList.length,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                              spacing: 8,
                              activeDotColor: ColorConstant.black900,
                              dotColor: ColorConstant.gray300,
                              dotHeight: getVerticalSize(
                                8,
                              ),
                              dotWidth: getVerticalSize(
                                8,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(24),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 22),
                    child: GetBuilder<HomeScreenController>(
                      init: HomeScreenController(HomeScreenModel().obs),
                      builder: (controller) => Container(
                        height: getVerticalSize(40),
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              width: getVerticalSize(24),
                            );
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.homeScreenModelObj.value.categoryList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                controller.setCategory(index);
                                homeScreenContainerController.change(1);
                              },
                              child: Container(
                                height: getVerticalSize(40),
                                alignment: Alignment.center,
                                padding: getPadding(
                                  left: 24,
                                  right: 24,
                                ),
                                // ignore: unrelated_type_equality_checks
                                decoration: controller.categoryIndex == index
                                    ? AppDecoration.txtBlack.copyWith(
                                        borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                                      )
                                    : AppDecoration.txtWhite.copyWith(
                                        borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                                      ),
                                child: Text(
                                  controller.homeScreenModelObj.value.categoryList[index],
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  // ignore: unrelated_type_equality_checks
                                  style: controller.categoryIndex == index ? AppStyle.txtBodyWhiteA700 : AppStyle.txtBodyBlack900,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      151,
                    ),
                    margin: getMargin(top: 24, right: 20),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: getVerticalSize(
                              140,
                            ),
                            padding: getPadding(
                              left: 24,
                              top: 27,
                              bottom: 27,
                            ),
                            decoration: AppDecoration.fillGray10001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "عرض خاص على أطباء الأسنان".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGamjaFlowerRegular17,
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  left: 45,
                                  top: 35,
                                  child: Text(
                                    "أحصل على العرض".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: AppStyle.txtSFProDisplaySemibold21Black900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImageremovebgpreview1,
                          height: getVerticalSize(
                            120,
                          ),
                          width: getHorizontalSize(
                            110,
                          ),
                          alignment: Alignment.centerRight,
                          margin: getMargin(
                            right: 2,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 15,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "منتجات عليها تخفيض".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFUITextSemibold19,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 2,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoutes.bestSellingProductScreen);
                            },
                            child: Text(
                              "جميع المنتجات".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtSFUITextRegular15Black900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 13,
                      right: 20,
                    ),
                    child: GetBuilder<HomeScreenController>(
                      init: HomeScreenController(HomeScreenModel().obs),
                      builder: (controller) => GridView.builder(
                        shrinkWrap: true,
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
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          HomescreenItemModel model = controller.homeScreenModelObj.value.homescreenItemList[index];
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoutes.productDetailScreen);
                            },
                            child: HomescreenItemWidget(
                              model,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: getPadding(
                  //     top: 24,
                  //     right: 20,
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //         "msg_featured_product".tr,
                  //         overflow: TextOverflow.ellipsis,
                  //         textAlign: TextAlign.left,
                  //         style: AppStyle.txtSFUITextSemibold19,
                  //       ),
                  //       Padding(
                  //         padding: getPadding(
                  //           top: 3,
                  //           bottom: 1,
                  //         ),
                  //         child: Text(
                  //           "lbl_view_all".tr,
                  //           overflow: TextOverflow.ellipsis,
                  //           textAlign: TextAlign.left,
                  //           style: AppStyle.txtSFUITextRegular15Black900,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Align(
                  //   alignment: Alignment.centerRight,
                  //   child: Container(
                  //     height: getVerticalSize(
                  //       225,
                  //     ),
                  //     child: Obx(
                  //       () => ListView.separated(
                  //         padding: getPadding(
                  //           top: 16,
                  //         ),
                  //         scrollDirection: Axis.horizontal,
                  //         separatorBuilder: (context, index) {
                  //           return SizedBox(
                  //             height: getVerticalSize(
                  //               18,
                  //             ),
                  //           );
                  //         },
                  //         itemCount: controller.homeScreenModelObj.value.listnameItemList.length,
                  //         itemBuilder: (context, index) {
                  //           ListnameItemModel model = controller.homeScreenModelObj.value.listnameItemList[index];
                  //           return GestureDetector(
                  //             onTap: () {
                  //               Get.toNamed(AppRoutes.productDetailScreen);
                  //             },
                  //             child: ListnameItemWidget(
                  //               model,
                  //             ),
                  //           );
                  //         },
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  Padding(
                    padding: getPadding(
                      top: 24,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "المدونة".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFUITextSemibold19,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 2,
                          ),
                          child: Text(
                            "عرض الكل".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFUITextRegular15Black900,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        263,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            top: 16,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                16,
                              ),
                            );
                          },
                          itemCount: controller.homeScreenModelObj.value.listwalkingfitnessItemList.length,
                          itemBuilder: (context, index) {
                            ListwalkingfitnessItemModel model = controller.homeScreenModelObj.value.listwalkingfitnessItemList[index];
                            return GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.blogDetailScreen);
                              },
                              child: ListwalkingfitnessItemWidget(
                                model,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
