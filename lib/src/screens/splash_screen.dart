import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/controllers/splash_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  final controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/splash_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Obx(
              () => AnimatedOpacity(
                duration: Duration(seconds: 2),
                opacity: controller.animateIcon.value ? 1 : 0,
                child: Image.asset(
                  'assets/images/icon.png',
                  width: 300,
                  height: 250,
                ),
              ),
            ),
          ),
          //  Obx(() => controller.isLoading.value
          //   ? Center(
          //       child: CircularProgressIndicator(
          //         color: Colors.white,
          //       ),
          //     )
          //   : SizedBox.shrink()),
        ],
      ),
    );
  }
}
