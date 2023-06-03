import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/user_screen/user_screen_controller.dart';
import 'package:hotels/user_screen/user_screen_widget.dart';
import 'package:hotels/utils/colors.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        appBar: detailAppBar(),
        body: Container(
          color: ColorsRes.deepPurple,
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.0116,
              ),
              nametextfild(),
            ],
          ),
        ),
      ),
    );
  }
}
