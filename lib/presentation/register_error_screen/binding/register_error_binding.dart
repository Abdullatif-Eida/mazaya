import '../controller/register_error_controller.dart';
import 'package:get/get.dart';

class RegisterErrorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterErrorController());
  }
}
