import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/user_screen/user_screen_controller.dart';
import 'package:hotels/utils/colors.dart';
import 'package:hotels/utils/icons.dart';
import 'package:hotels/utils/string.dart';
import 'package:hotels/utils/text.dart';

AppBar detailAppBar() => AppBar(
      title: const Text(
        StringRes.details,
        style: TextStyleCommon.containersHeadingStyle,
      ),
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(IconsRes.arrowback, color: ColorsRes.white),
      ),
      backgroundColor: ColorsRes.deepPurple,
      elevation: 0,
      centerTitle: true,
    );
Widget nametextfild() {
  return GetBuilder<UserController>(
    builder: (controller) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: TextField(
              controller: controller.namecontroller,
              decoration: InputDecoration(
                  hintText: StringRes.hintname,
                  labelText: StringRes.labelname,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              obscureText: true,
              controller: controller.numbercontroller,
              decoration: InputDecoration(
                  hintText: StringRes.hintnumber,
                  labelText: StringRes.labelnumber,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              obscureText: true,
              controller: controller.emailcontroller,
              decoration: InputDecoration(
                  hintText: StringRes.hintemail,
                  labelText: StringRes.labelemail,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              obscureText: true,
              controller: controller.citycontroller,
              decoration: InputDecoration(
                  hintText: StringRes.hintcity,
                  labelText: StringRes.labelcity,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
        ],
      );
    },
  );
}
