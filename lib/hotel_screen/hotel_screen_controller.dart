import 'package:get/get.dart';
import 'package:hotels/utils/string.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HotelController extends GetxController {
  // void book() {
  //   Get.to(const UserScreen());
  // }

  void booking(List hotelList, int index) {
    Get.to(
      WebViewWidget(
        controller: WebViewController()
          ..loadRequest(
            Uri.parse(
              hotelList[index]["bookurl"],
            ),
          ),
      ),
    );
  }
}
