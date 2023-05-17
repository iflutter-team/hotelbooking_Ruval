import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/utils/colors.dart';
import 'package:hotels/utils/data.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(Get.arguments["hotelname"]),
    );
  }
}
