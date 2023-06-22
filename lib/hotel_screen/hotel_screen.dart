// ignore_for_file: must_be_immutable
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/hotel_screen/hotel_screen_controller.dart';
import '../utils/colors.dart';
import '../utils/icons.dart';
import '../utils/string.dart';
import '../utils/text.dart';
import 'hotel_screen_widget.dart';

class HotelScreen extends StatelessWidget {
  List? hotelList;
  List? imageList;
  int? index;
  HotelScreen({super.key, this.hotelList, this.index, this.imageList});

  @override
  Widget build(BuildContext context) {
    Get.put(HotelController());
    return Scaffold(
      backgroundColor: Colors.transparent,
      // appBar: hotelappbar(imageList!, index!),
      body: GetBuilder<HotelController>(
        id: "update",
        builder: (controller) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image:
                  NetworkImage(hotelList?[controller.imageindex]["hotelimage"]),
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => Get.back(),
                        icon: const Icon(
                          IconsRes.arrowback,
                          color: ColorsRes.white,
                        ),
                      ),
                      SizedBox(width: Get.width * 0.2290),
                      Text(
                        imageList?[controller.imageindex]["countryName"] +
                            StringRes.hotel,
                        style: TextStyleCommon.textFont(
                          TextStyleCommon.containersHeadingStyle,
                        ),
                      ),
                    ],
                  ),
                  hoteldatashow(hotelList!),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
