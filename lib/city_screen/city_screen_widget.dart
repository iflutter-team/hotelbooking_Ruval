import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:hotels/utils/colors.dart';
import 'package:hotels/slider_screen/slider_screen_controller.dart';
import '../utils/icons.dart';
import '../utils/text.dart';

AppBar cityAppBar() {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        Get.back();
      },
      icon: const Icon(
        IconsRes.arrowback,
        color: ColorsRes.white,
      ),
    ),
    backgroundColor: ColorsRes.deepPurple,
    elevation: 0,
    centerTitle: true,
  );
}

Widget citylist() {
  return GetBuilder<SliderController>(
    builder: (controller) => StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: controller.imageList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => controller.ontap(index),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image:
                    (NetworkImage(controller.imageList[index]["countryimage"])),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.imageList[index]["countryName"],
                      style: TextStyleCommon.headingsTextsFont(
                        TextStyleCommon.containersHeadingStyle,
                      ),
                    ),
                  ]),
            ),
          ),
        );
      },
      staggeredTileBuilder: (int index) =>
          StaggeredTile.count(2, index.isEven ? 3 : 2),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
    ),
  );
}
