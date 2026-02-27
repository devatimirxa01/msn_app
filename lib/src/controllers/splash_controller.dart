import 'dart:async';
import 'package:get/get.dart';

class SplashController extends GetxController {
  var animateIcon = false.obs;
  // var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    Timer(Duration(milliseconds: 500), () {
      animateIcon.value = true;

      //     isLoading.value = true; // observable variable
      //  Future.delayed(Duration(seconds: 3));
    });
    Timer(const Duration(seconds: 3), () {
      Get.offNamed('/webview');
    });
  }
}
