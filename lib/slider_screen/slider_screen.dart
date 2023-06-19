// ignore_for_file: must_be_immutable

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/slider_screen/slider_screen_controller.dart';
import 'slider_screen_widget.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(SliderController());
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: GetBuilder<SliderController>(
          id: "bg",
          builder: (controller) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  controller.imageData[controller.imageindex ?? 0]["image"],
                ),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: welcomeScreenSlider(),
                  ),
                  sliderScreenButton,
                ],
              ),
            ),
          ),
        ));
  }
}
