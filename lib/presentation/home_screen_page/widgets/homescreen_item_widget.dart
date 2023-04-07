import '../controller/home_screen_controller.dart';
import '../models/homescreen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/core/app_export.dart';
import 'package:shoes_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class HomescreenItemWidget extends StatelessWidget {
  HomescreenItemWidget(this.homescreenItemModelObj);

  HomescreenItemModel homescreenItemModelObj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        border: (Border.all(width: 1.5, color: Colors.white)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      // padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16)),
                color: Colors.transparent,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://i.cbc.ca/1.6801410.1680639762!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_780/dr-jose-francois.jpg")),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 4),
              child: Text(
                "الدكتور أحمد",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                ),
                maxLines: 1,
              ),
            )),
          )
        ],
      ),
    );
  }
}
