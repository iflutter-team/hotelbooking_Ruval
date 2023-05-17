import 'package:flutter/material.dart';
import 'package:hotels/utils/colors.dart';
import 'welcome_screen_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: ColorsRes.deepPurple),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: welcomeScreenSlider(),
                  ),
                  welcomeScreenButton,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
