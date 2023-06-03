// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/hotel_screen/hotel_screen_controller.dart';
import 'package:hotels/utils/string.dart';
import 'package:hotels/slider_screen/slider_screen_controller.dart';
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

Widget hoteldatashow(List hotelList) {
  return GetBuilder<SliderController>(
    builder: (hotelcontroller) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: hotelList.length,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: Get.height * 0.2913,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(hotelList[index]["hotelimage"]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: Text(
                hotelList[index]["hotelname"],
                style: TextStyleCommon.hoteltextStyle,
              ),
              trailing: Text(
                hotelList[index]["price"],
                style: TextStyleCommon.pricetextStyle,
              ),
              subtitle: Text(
                hotelList[index]["dis"],
              ),
            ),
            SizedBox(
              height: Get.height * 0.0582,
            ),
            button()
          ],
        ),
      ),
    ),
  );
}

Widget button() {
  return GetBuilder<HotelController>(
    builder: (controller) => GestureDetector(
      onTap: () => controller.book(),
      child: Container(
          decoration: BoxDecoration(
              color: ColorsRes.white, borderRadius: BorderRadius.circular(6)),
          height: Get.height * 0.0582,
          width: Get.width * 0.3053,
          child: Center(
            child: Text(
              StringRes.book,
              style: TextStyleCommon.continuetextStyle,
            ),
          )),
    ),
  );
}
