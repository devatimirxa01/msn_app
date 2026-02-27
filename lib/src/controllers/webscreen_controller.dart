// import 'package:get/get.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class MyWebviewController extends GetxController {
//   late WebViewController webViewController;
//  var isLoading = false.obs;
//   @override
//   void onInit() {
//     super.onInit();
//     webViewController = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..loadRequest(Uri.parse('https://new-dev-events.mysourcenetwork.com/'));

//        isLoading.value = true; // observable variable
//       Future.delayed(Duration(seconds: 3));

//   }
// }

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../config/app_configs.dart';

class MyWebviewController extends GetxController {
  // var isLoading = true.obs; // default true, page start hote hi loader dikhega
  late WebViewController webViewController;

  @override
  void onInit() {
    super.onInit();

    webViewController =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setNavigationDelegate(
            NavigationDelegate(
              // onPageStarted: (url) {
              //   isLoading.value = true; // loader start
              // },
              // onPageFinished: (url) {
              //   isLoading.value = false; // loader hide
              // },
            ),
          )
          ..loadRequest(Uri.parse(AppConfigs.baseUrl));
  }
}









// import 'package:get/get.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class MyWebviewController extends GetxController {
//   late WebViewController webViewController;

//   @override
//   void onInit() {
//     super.onInit();

//     webViewController = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onPageFinished: (String url) {
//             // Yahan resolution/viewport set karne ka JavaScript
//             webViewController.runJavaScript(
//               "document.querySelector('meta[name=viewport]')?.setAttribute('content', 'width=device-width, initial-scale=1.0');"
//             );
//           },
//         ),
//       )
//       ..loadRequest(
//         Uri.parse('https://new-dev-events.mysourcenetwork.com/'),
//       );
//   }
// }



