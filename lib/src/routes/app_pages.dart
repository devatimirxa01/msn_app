
import 'package:flutter_application_1/src/screens/web_screen.dart';
import 'package:flutter_application_1/src/screens/splash_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: '/', page: () => SplashScreen(),
    //  binding: BindingsBuilder(() {
    //     Get.put(SplashController());
    //   }),
   
    ),
    
    GetPage(name: '/webview', page: () => WebViewPage()),
  ];
}
  