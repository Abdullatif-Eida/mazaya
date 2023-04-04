import '../controller/order_details_one_controller.dart';
import 'package:get/get.dart';

class OrderDetailsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderDetailsOneController());
  }
}
