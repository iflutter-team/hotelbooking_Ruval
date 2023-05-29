// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/hotel_screen/hotel_screen_controller.dart';
import 'package:hotels/utils/colors.dart';
import 'hotel_screen_widget.dart';

class HotelScreen extends StatelessWidget {
  List? hotelList;
  HotelScreen({super.key, this.hotelList});
  HotelController hotelcontroller = Get.put(HotelController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsRes.deepPurple,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: hotelappbar(),
        body: Column(
          children: [
            hoteldatashow(hotelList!),
          ],
        ),
      ),
    );
  }
}
