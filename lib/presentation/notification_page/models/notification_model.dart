import 'package:get/get.dart';
import 'notification_item_model.dart';

class NotificationModel {
  RxList<NotificationItemModel> notificationItemList = [
    NotificationItemModel("noti1.png", "تم التعديل بنجاح.", "3:20 PM"),
    NotificationItemModel("noti2.png", "تم اشلراء بنجاح", "3:59 PM"),
  ].obs;
}
