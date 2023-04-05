import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:shoes_app/core/utils/color_constant.dart';
import 'package:shoes_app/core/utils/image_constant.dart';
import 'package:shoes_app/core/utils/size_utils.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/app_bar/appbar_title.dart';
import '../home_screen_container_screen/controller/home_screen_container_controller.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

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
          title: AppbarTitle(text: "بطاقات مزايا", margin: getMargin(left: 16)),
          styleType: Style.bgFillWhiteA700),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              for (var item in [1, 2, 3, 4, 4])
                Image.asset(
                  'assets/images/MazayaCards.png',
                ),
            ],
          ))
        ],
      )),
    );
  }
}
