import 'package:get/get.dart';
import 'myfavorite_item_model.dart';

class MyFavoriteModel {
  RxList<MyfavoriteItemModel> myfavoriteItemList = [
    new MyfavoriteItemModel("الطبية", "\$10.00", "img_imageremovebgpreview1.png"),
    new MyfavoriteItemModel("القلبية", "\$25.00", "img_imageremovebgpreview1.png"),
    new MyfavoriteItemModel("النفسية", "\$10.00", "img_imageremovebgpreview1.png"),
    new MyfavoriteItemModel("العصبية", "\$21.00", "img_imageremovebgpreview1.png"),
  ].obs;
}
