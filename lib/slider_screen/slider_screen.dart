// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/slider_screen/slider_screen_controller.dart';
import 'slider_screen_widget.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({
    super.key,
  });

  SliderController sliderController = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SliderController>(
      id: "update",
      builder: (controller) => Container(
        height: 800,
        width: 200,
        decoration: BoxDecoration(
          // color: ColorsRes.deepPurple,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              controller.imageData[controller.imageindex ?? 0]["image"],
            ),
          ),
        ),
        child: Scaffold(
          // appBar: sliderAppBar,
          backgroundColor: Colors.transparent,
          body: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: welcomeScreenSlider(),
                  ),
                  sliderScreenButton,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
