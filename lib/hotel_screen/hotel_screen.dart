import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/utils/colors.dart';
import 'hotel_screen_widget.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsRes.deepPurple,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: hotelappbar(),
        body: Column(
          children: [hoteldatashow()],
        ),
      ),
    );
    // Scaffold(
    //   body: Text(Get.arguments["hotelname"]),
    // );
  }
}
