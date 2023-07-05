import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HotelController extends GetxController {
  int? imageindex;
  List? hotelList;
  List? imageList;

  void booking(List hotelList, int index) {
    Get.to(
      () => WebViewWidget(
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
