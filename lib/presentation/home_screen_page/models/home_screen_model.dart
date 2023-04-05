import 'package:get/get.dart';
import 'homescreen_item_model.dart';
import 'listname_item_model.dart';
import 'listwalkingfitness_item_model.dart';

class HomeScreenModel {
  RxList<String> sliderlovelysportcoItemList = ["banner1.jpg", "banner2.jpg"].obs;

  RxList<String> categoryList = ["طب أسنان", "قلبية", "طب عيون"].obs;

  RxList<HomescreenItemModel> homescreenItemList = [
    new HomescreenItemModel("طبية", "\$10.00", "img_imageremovebgpreview1.png", ""),
    new HomescreenItemModel("قلبية", "\$25.00", "img_imageremovebgpreview1.png", "\$32.00"),
    new HomescreenItemModel("نفسية", "\$10.00", "img_imageremovebgpreview1.png", "\$12.00"),
    new HomescreenItemModel("عضلية", "\$21.00", "img_imageremovebgpreview1.png", ""),
    new HomescreenItemModel("عينية", "\$12.00", "img_imageremovebgpreview1.png", ""),
    new HomescreenItemModel("عظمية", "\$21.00", "img_imageremovebgpreview1.png", ""),
    new HomescreenItemModel("عصبية", "\$12.00", "img_imageremovebgpreview1.png", ""),
    new HomescreenItemModel("أنف و حنجرة", "\$21.00", "img_imageremovebgpreview1.png", ""),
  ].obs;

  RxList<HomescreenItemModel> doctors = [
    new HomescreenItemModel("طبية", "", "img_imageremovebgpreview1.png", ""),
    new HomescreenItemModel("قلبية", "", "img_imageremovebgpreview1.png", ""),
    new HomescreenItemModel("نفسية", "", "img_imageremovebgpreview1.png", ""),
    new HomescreenItemModel("عضلية", "", "img_imageremovebgpreview1.png", ""),
    new HomescreenItemModel("عينية", "", "img_imageremovebgpreview1.png", ""),
    new HomescreenItemModel("عظمية", "", "img_imageremovebgpreview1.png", ""),
    new HomescreenItemModel("عصبية", "", "img_imageremovebgpreview1.png", ""),
    new HomescreenItemModel("أنف و حنجرة", "", "img_imageremovebgpreview1.png", ""),
  ].obs;

  RxList<ListnameItemModel> listnameItemList =
      [ListnameItemModel("Men’s Nike Shoes", "\$45.00", "featured1.png"), ListnameItemModel("Men’s Sparcle Shoes", "\$45.00", "featured2.png")].obs;

  RxList<ListwalkingfitnessItemModel> listwalkingfitnessItemList =
      [ListwalkingfitnessItemModel("banner1.jpg"), ListwalkingfitnessItemModel("banner2.jpg")].obs;
}
