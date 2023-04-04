import '../controller/splace_screen_two_controller.dart';
import 'package:get/get.dart';

class SplaceScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplaceScreenTwoController());
  }
}
