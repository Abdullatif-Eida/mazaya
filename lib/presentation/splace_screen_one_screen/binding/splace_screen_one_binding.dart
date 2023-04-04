import '../controller/splace_screen_one_controller.dart';
import 'package:get/get.dart';

class SplaceScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplaceScreenOneController());
  }
}
