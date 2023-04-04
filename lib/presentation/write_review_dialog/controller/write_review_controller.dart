import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/write_review_dialog/models/write_review_model.dart';
import 'package:flutter/material.dart';

class WriteReviewController extends GetxController {
  TextEditingController group101Controller = TextEditingController();

  Rx<WriteReviewModel> writeReviewModelObj = WriteReviewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group101Controller.dispose();
  }
}
