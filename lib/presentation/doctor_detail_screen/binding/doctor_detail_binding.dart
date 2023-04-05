import '../controller/doctor_detail_controller.dart';
import 'package:get/get.dart';

class DoctorDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorDetailController());
  }
}
