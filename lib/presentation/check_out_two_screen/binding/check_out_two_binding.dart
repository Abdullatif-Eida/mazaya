import '../controller/check_out_two_controller.dart';
import 'package:get/get.dart';

class CheckOutTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckOutTwoController());
  }
}
