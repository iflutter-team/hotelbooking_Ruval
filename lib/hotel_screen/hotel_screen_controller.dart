import 'package:get/get.dart';
import 'package:hotels/user_screen/use_screen.dart';
import 'package:hotels/utils/string.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HotelController extends GetxController {
  void book() {
    Get.to(const UserScreen());
  }

  booking() {
    Get.to(
      WebViewWidget(
        controller: WebViewController()
          ..loadRequest(
            Uri.parse(StringRes.tajbook),
          ),
      ),
    );
  }
}
