import '../controller/register_filled_controller.dart';
import 'package:get/get.dart';

class RegisterFilledBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterFilledController());
  }
}
