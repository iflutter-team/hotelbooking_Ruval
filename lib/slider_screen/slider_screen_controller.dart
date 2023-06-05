// ignore_for_file: avoid_print

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
}
