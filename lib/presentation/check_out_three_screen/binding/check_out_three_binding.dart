import '../controller/check_out_three_controller.dart';
import 'package:get/get.dart';

class CheckOutThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckOutThreeController());
  }
}
