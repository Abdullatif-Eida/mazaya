import '../controller/blog_detail_controller.dart';
import 'package:get/get.dart';

class BlogDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BlogDetailController());
  }
}
