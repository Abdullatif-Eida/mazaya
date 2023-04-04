import '../controller/check_out_one_controller.dart';
import 'package:get/get.dart';

class CheckOutOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckOutOneController());
  }
}
