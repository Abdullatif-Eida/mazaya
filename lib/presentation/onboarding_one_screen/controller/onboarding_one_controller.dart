import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/presentation/onboarding_one_screen/models/onboarding_one_model.dart';

class OnboardingOneController extends GetxController {
  // Rx<OnboardingOneModel> onboardingOneModelObj = OnboardingOneModel().obs;
  RxInt position = 0.obs;

  onChange(RxInt value) {
    position.value = value.value;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  List<OnboardingOneModel> onboardingList = [
    new OnboardingOneModel(
        "image1.png", "مزايا تمنحك الأمان", "شركة مزايا تعمل في كل من المملكة العربية السعودية ودولة الامارات العربية المتحدة ودولة الكويت"),
    new OnboardingOneModel(
        "image2.png", "مزايا تمنحك الأمان", "شركة مزايا تعمل في كل من المملكة العربية السعودية ودولة الامارات العربية المتحدة ودولة الكويت"),
    new OnboardingOneModel(
        "image3.png", "مزايا تمنحك الأمان", "شركة مزايا تعمل في كل من المملكة العربية السعودية ودولة الامارات العربية المتحدة ودولة الكويت")
  ];

  @override
  void onClose() {
    super.onClose();
  }
}
