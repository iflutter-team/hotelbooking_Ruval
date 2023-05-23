import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/colors.dart';
import '../utils/icons.dart';
import '../utils/text.dart';

AppBar hotelappbar() {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          IconsRes.arrowback,
          color: ColorsRes.white,
        )),
    elevation: 0,
    backgroundColor: ColorsRes.deepPurple,
    centerTitle: true,
  );
}

Widget hoteldatashow() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: Get.arguments["networkimage"],
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListTile(
          title: Text(
            Get.arguments["hotelname"],
            style: TextStyleCommon.hoteltextStyle,
          ),
          trailing: Text(
            Get.arguments["hotelPrice"],
            style: TextStyleCommon.pricetextStyle,
          ),
        ),
      ],
    ),
  );
}
