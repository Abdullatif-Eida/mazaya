import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoes_app/core/utils/image_constant.dart';
import 'package:shoes_app/core/utils/size_utils.dart';
import 'package:shoes_app/presentation/mazaya/cards.dart';
import 'package:shoes_app/presentation/mazaya/offer.dart';
import 'package:shoes_app/widgets/custom_image_view.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 270,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x33000000),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.only(topLeft: Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                child: Row(
                  children: [
                    CustomImageView(imagePath: ImageConstant.logo, height: getVerticalSize(30), radius: BorderRadius.circular(getHorizontalSize(8))),
                    SizedBox(width: 15),
                    const Text(
                      "مزايا",
                      style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Divider(
                height: 12,
                thickness: 2,
                color: Color(0xFFE0E3E7),
              ),
              drwerRaw(
                  icon: Icons.local_activity,
                  text: "عروض مزايا",
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Offer()));
                  }),
              drwerRaw(
                  icon: Icons.card_membership_sharp,
                  text: "بطاقات مزايا",
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cards()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class drwerRaw extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function()? onTap;
  const drwerRaw({Key? key, required this.icon, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                  child: Container(
                    width: 4,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF1F4F8),
                    ),
                  ),
                ),
                Icon(
                  icon,
                  color: const Color(0xFF57636C),
                  size: 28,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Color(0xFF57636C),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
