import 'package:shoes_app/presentation/home_screen_container_screen/controller/home_screen_container_controller.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

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
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            72,
          ),
          leadingWidth: 54,
          leading: GestureDetector(
            onTap: () => _key.currentState!.openDrawer(),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 12),
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
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
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    CustomImageView(
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GetBuilder<HomeScreenController>(
                    init: HomeScreenController(HomeScreenModel().obs),
                    builder: (controller) => CarouselSlider.builder(
                      options: CarouselOptions(
                        height: getVerticalSize(
                          255,
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
                    padding: getPadding(right: 12, left: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "مزودي الخدمات".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFUITextSemibold19,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13),
                  Container(
                    height: getVerticalSize(
                      150,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              18,
                            ),
                          );
                        },
                        itemCount: controller.homeScreenModelObj.value.listnameItemList.length,
                        itemBuilder: (context, index) {
                          ListnameItemModel model = controller.homeScreenModelObj.value.listnameItemList[index];
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoutes.docotorScreen);
                            },
                            child: ListnameItemWidget(
                              model,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(top: 15, right: 12, left: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "احدث عروض مزايا".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFUITextSemibold19,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Align(
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
                  ),
                  SizedBox(height: 15),
                  Image.network(
                      "https://images.squarespace-cdn.com/content/v1/5137da26e4b0fcbdce61eb9e/1539981474338-ZGPMCWHK7DDLW6M92INC/Be+Extraordinary+Banner.png?format=1000w"),
                  SizedBox(height: 15),
                  GetBuilder<HomeScreenContainerController>(
                    init: HomeScreenContainerController(),
                    builder: (controller) => CustomButton(
                        onTap: () {
                          launchUrl(
                            Uri.parse("http://mazaya-vip.com/"),
                            mode: LaunchMode.externalApplication,
                          );
                        },
                        height: getVerticalSize(48),
                        text: "إنضم الان لشبكتنا الطبية",
                        margin: getMargin(bottom: 26, right: 20, left: 20)),
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
