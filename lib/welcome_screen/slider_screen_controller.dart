import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class SliderController extends GetxController {
  Map valueImage = {};

  @override
  void onInit() {
    continues();
    super.onInit();
  }

  DatabaseReference database = FirebaseDatabase.instance.ref("images");
  Future<void> continues() async {
    await database.once().then(
      (value) {
        Map temp = value.snapshot.value as Map;
        print(temp);
        valueImage = temp;
      },
    );
    print(valueImage);
  }
}
