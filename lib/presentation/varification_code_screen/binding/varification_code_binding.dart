import '../controller/varification_code_controller.dart';
import 'package:get/get.dart';

class VarificationCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VarificationCodeController());
  }
}
