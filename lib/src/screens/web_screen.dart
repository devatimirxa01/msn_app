// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/src/controllers/webscreen_controller.dart';
// import 'package:get/get.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class WebViewPage extends StatelessWidget {
//   const WebViewPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(MyWebviewController());
//     return Scaffold(
//       // appBar: AppBar(title: const Text('MSN - My Source Network')),
//       body: SafeArea(child: WebViewWidget(controller: controller.webViewController),)

//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/src/controllers/splash_controller.dart';
// import 'package:flutter_application_1/src/controllers/webscreen_controller.dart';
// import 'package:get/get.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class WebViewPage extends StatelessWidget {
//   const WebViewPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(MyWebviewController());
//     final loadcontroller = Get.put(SplashController());
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             WebViewWidget(controller: controller.webViewController),
//             Obx(() => loadcontroller.isLoading.value
//                 ? const Center(
//                     child: CircularProgressIndicator(color: Colors.white),
//                   )
//                 : const SizedBox.shrink()),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/controllers/webscreen_controller.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyWebviewController());

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            WebViewWidget(controller: controller.webViewController),

            // Loader
            // Obx(
            //   () =>
            //       controller.isLoading.value
            //           ? const Center(
            //             child: CircularProgressIndicator(color: Colors.white),
            //           )
            //           : const SizedBox.shrink(),
            // ),
          ],
        ),
      ),
    );
  }
}
