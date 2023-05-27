import 'package:flutter/material.dart';
import 'package:hotels/utils/colors.dart';
import 'hotel_screen_widget.dart';

class HotelScreen extends StatelessWidget {
  List? hotelList;
  HotelScreen({super.key, this.hotelList});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsRes.deepPurple,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: hotelappbar(),
          body: SingleChildScrollView(child: hoteldatashow(hotelList!))),
    );
  }
}
