import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/welcome_screen/slider_screen_controller.dart';
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
        physics: NeverScrollableScrollPhysics(),
        itemCount: hotelList.length,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: 250,
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
          ],
        ),
      ),
    ),
  );
}
