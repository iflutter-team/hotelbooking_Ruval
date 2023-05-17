import 'package:animations/animations.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotels/city_screen/city_scree.dart';
import 'package:hotels/utils/colors.dart';
import '../utils/image.dart';
import '../utils/string.dart';
import '../utils/text.dart';

Widget welcomeScreenSlider() {
  return CarouselSlider(
    options: CarouselOptions(
      height: 450,
      enlargeCenterPage: true,
      enableInfiniteScroll: true,
      autoPlay: true,
      autoPlayCurve: Curves.fastOutSlowIn,
      autoPlayAnimationDuration: const Duration(milliseconds: 800),
    ),
    items: [
      Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(5.0),
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: travelTheWorldImage,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text(
              StringRes.travelTheWorld,
              style: TextStyleCommon.containersHeadingStyle,
            ),
            SizedBox(height: 12.0),
            Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: Text(StringRes.discone,
                  style: TextStyleCommon.containertextStyle),
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(5.0),
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: letsTravelImage,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text(
              StringRes.letTravel,
              style: TextStyleCommon.containersHeadingStyle,
            ),
            SizedBox(height: 12.0),
            Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: Text(
                StringRes.discTwo,
                style: TextStyleCommon.containertextStyle,
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(5.0),
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: enjoyFoodImage,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text(
              StringRes.enjoyFood,
              style: TextStyleCommon.containersHeadingStyle,
            ),
            SizedBox(height: 12.0),
            Padding(
              padding: EdgeInsets.only(right: 30.0),
              child: Text(
                StringRes.discthree,
                style: TextStyleCommon.containertextStyle,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget welcomeScreenButton = OpenContainer(
  closedColor: ColorsRes.white,
  transitionDuration: const Duration(seconds: 1),
  closedBuilder: (context, openWidget) {
    return SizedBox(
      height: 50,
      width: 100,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              StringRes.continues,
              style: TextStyleCommon.continuetextStyle,
            ),
          ],
        ),
      ),
    );
  },
  openBuilder: (context, closeWidget) {
    return const CityScreen();
  },
);
