import '../controller/register_error_one_controller.dart';
import 'package:get/get.dart';

class RegisterErrorOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterErrorOneController());
  }
}
