import 'package:get/get.dart';
import 'package:hotels/user_screen/use_data.dart';

class HotelController extends GetxController {
  void book() {
    Get.to(const UserScreen());
  }
}
