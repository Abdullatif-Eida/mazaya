import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'categories_item_model.dart';

class CategoriesModel {
  RxList<CategoriesItemModel> categoryItemList = [
    CategoriesItemModel("img_imageremovebgpreview1.png", "طبية"),
    CategoriesItemModel("img_imageremovebgpreview1.png", "قلبية"),
    CategoriesItemModel("img_imageremovebgpreview1.png", "عصبية"),
    CategoriesItemModel("img_imageremovebgpreview1.png", "نفسية"),
    CategoriesItemModel("img_imageremovebgpreview1.png", "عظمية"),
    CategoriesItemModel("img_imageremovebgpreview1.png", "أسنان"),
    CategoriesItemModel("img_imageremovebgpreview1.png", "معدة"),
  ].obs;
}
