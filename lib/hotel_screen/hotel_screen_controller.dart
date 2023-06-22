import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HotelController extends GetxController {
  int imageindex = 0;
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

  void imageUpdate(
    int index,
    List hotelList,
    List imageList,
  ) {
    imageindex = index;
    update(["update"]);
  }
}
