import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class SliderController extends GetxController {
  List<Map> data = [];
  String valueImage = "";

  @override
  void onInit() {
    continues();
    super.onInit();
  }

  FirebaseDatabase database = FirebaseDatabase.instance;
  Future<void> continues() async {
    await database.ref("image").once().then(
      (value) {
        String temp = value.snapshot.value as String;
        valueImage = temp;
      },
    );
  }
}
