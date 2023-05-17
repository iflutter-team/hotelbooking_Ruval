import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hotels/welcome_screen/welcome_screen.dart';

main() {
  runApp(GetMaterialApp(
    // builder: (context, child) => MediaQuery(
    //     data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
    //     child: widge!),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    home: const WelcomeScreen(),
  ));
}
