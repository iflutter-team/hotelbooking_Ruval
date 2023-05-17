import 'package:flutter/material.dart';
import 'package:hotels/city_screen/city_screen_widget.dart';
import 'package:hotels/utils/colors.dart';

class CityScreen extends StatelessWidget {
  const CityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cityAppBar(),
      backgroundColor: Colors.transparent,
      body: Container(
          color: ColorsRes.deepPurple,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [Expanded(child: citylist())],
            ),
          )),
    );
  }
}
