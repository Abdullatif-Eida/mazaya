import '../controller/home_screen_container_controller.dart';
import 'package:get/get.dart';

class HomeScreenContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenContainerController());
  }
}
