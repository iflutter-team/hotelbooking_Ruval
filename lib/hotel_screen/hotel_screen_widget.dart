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

Widget hoteldatashow() {
  return GetBuilder<SliderController>(
    builder: (hotelcontroller) => ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: hotelcontroller.imageList.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Expanded(
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(hotelcontroller.imageList[index]
                        ["hotel"]["hotelimage"]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  hotelcontroller.imageList[index]["hotel"]["hotelname"],
                  style: TextStyleCommon.hoteltextStyle,
                ),
                trailing: Text(
                  hotelcontroller.imageList[index]["hotel"]["price"],
                  style: TextStyleCommon.pricetextStyle,
                ),
                subtitle: Text(
                  hotelcontroller.imageList[index]["hotel"]["dis"],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
