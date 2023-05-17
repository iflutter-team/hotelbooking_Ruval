import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hotels/hotel_screen/hotel_screen.dart';
import 'package:hotels/utils/colors.dart';
import 'package:hotels/utils/data.dart';
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
  );
}

Widget citylist() {
  return StaggeredGridView.countBuilder(
    crossAxisCount: 4,
    itemCount: countrydata.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Get.to(
            const HotelScreen(),
            arguments: {
              "networkimage": countrydata[index].hotel?[index].hotelImage,
              "hotelname": countrydata[index].hotel?[index].hotelname as String,
              "hotelPrice":
                  countrydata[index].hotel?[index].hotelPrice as String,
            },
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: countrydata[index].countryImages!,
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                countrydata[index].countryNames!,
                style: TextStyleCommon.containersHeadingStyle,
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
  );
}
