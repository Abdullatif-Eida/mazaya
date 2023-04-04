import '../controller/notification_controller.dart';
import '../models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  NotificationItemWidget(this.notificationItemModelObj);

  NotificationItemModel notificationItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: getPadding(
        left: 20,
        top: 16,
        right: 20,
        bottom: 16,
      ),
      decoration: AppDecoration.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imagePath + notificationItemModelObj.image,
            height: getSize(
              48,
            ),
            width: getSize(
              48,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                24,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: getMargin(
                right: 16,
              ),
              child: Text(
                "تم الشراء بنجاح".tr,
                maxLines: null,
                textAlign: TextAlign.right,
                style: AppStyle.txtSFUITextRegular15Black9001,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 28,
              // bottom: 10,
            ),
            child: Text(
              "2:20".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtSFUITextRegular15Gray600,
            ),
          ),
        ],
      ),
    );
  }
}
