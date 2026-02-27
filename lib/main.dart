import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/controllers/webscreen_controller.dart';
import 'package:get/get.dart';
import 'src/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
  Get.put(MyWebviewController());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: AppPages.pages,
    );
  }
}
