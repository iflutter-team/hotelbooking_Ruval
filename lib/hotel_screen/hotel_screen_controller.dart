import 'package:get/get.dart';
import 'package:hotels/user_screen/use_screen.dart';

class HotelController extends GetxController {
  void book() {
    Get.to(const UserScreen());
  }
}
