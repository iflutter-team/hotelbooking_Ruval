// ignore_for_file: avoid_print

import 'dart:ffi';

import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

import '../hotel_screen/hotel_screen.dart';

class SliderController extends GetxController {
  Map<String, dynamic> valueImage = {};
  List imageList = [];

  @override
  void onInit() {
    continues();

    super.onInit();
  }

  DatabaseReference database = FirebaseDatabase.instance.ref("userData");
  Future continues() async {
    await database.once().then(
      (value) {
        List temp = value.snapshot.value as List;
        print(temp);
        imageList = temp;
      },
    );
    print(valueImage);
  }

  ontap(int index) {
    Get.to(() => HotelScreen(
          hotelList: imageList[index]["hotel"],
          index: index,
          imageList: imageList,
        ));
  }

  List imageData = [
    'https://wallpapershome.com/images/pages/pic_h/23716.jpg',
    'https://wallpapershome.com/images/pages/pic_h/23719.jpg',
    'https://i0.wp.com/digital-photography-school.com/wp-content/uploads/2014/12/FINAL-Bread.jpg?resize=600%2C400&ssl=1',
  ];
}
