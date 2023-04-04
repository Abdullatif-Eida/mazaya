import '../controller/order_details_two_controller.dart';
import 'package:get/get.dart';

class OrderDetailsTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderDetailsTwoController());
  }
}
