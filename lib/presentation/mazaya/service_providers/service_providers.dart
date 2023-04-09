import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:shoes_app/core/utils/image_constant.dart';
import 'package:shoes_app/core/utils/size_utils.dart';
import 'package:shoes_app/presentation/mazaya/service_providers/service_providers_details.dart';
import 'package:shoes_app/widgets/app_bar/appbar_image.dart';
import 'package:shoes_app/widgets/app_bar/appbar_title.dart';
import 'package:shoes_app/widgets/app_bar/custom_app_bar.dart';
import 'package:shoes_app/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../home_screen_container_screen/controller/home_screen_container_controller.dart';

class ServiceProvider extends StatelessWidget {
  const ServiceProvider({super.key});

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
          title: AppbarTitle(text: "مزودي خدمة مزايا", margin: getMargin(left: 16)),
          styleType: Style.bgFillWhiteA700),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              for (var item in [1, 2, 3, 4, 4])
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ServiceProviderDetails()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x32000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                            child: CachedNetworkImage(
                              imageUrl:
                                  "https://mazaya.care/wp-content/uploads/elementor/thumbs/R5IqeKIwR6i2CYSEcxc0_2WfgpR9q6iabLSIe-q4fmp87zsthxgvmex2wawf4ijuq1o1xy7cnu1pavr8.jpg",
                              width: double.infinity,
                              height: 190,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    "صيدلية البيرق الشامخ",
                                    style: TextStyle(
                                      color: Color(0xFF101213),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    'صيديلة تحتوي على العديد من أنواع الدواء',
                                    style: TextStyle(
                                      color: Color(0xFF57636C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
            ],
          )),
        ],
      )),
    );
  }
}
