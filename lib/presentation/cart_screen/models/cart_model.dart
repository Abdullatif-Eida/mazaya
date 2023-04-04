import 'package:get/get.dart';
import 'cart_item_model.dart';

class CartModel {
  RxList<CartItemModel> cartItemList = [
    CartItemModel("img_imageremovebgpreview1.png", "طبية", "\$12.00", "Pink", 01),
    CartItemModel("img_imageremovebgpreview1.png", "عصبية", "\$32.00", "Black", 01),
    CartItemModel("img_imageremovebgpreview1.png", "قلبية", "\$10.00", "Brown", 01)
  ].obs;
}
