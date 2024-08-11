import 'dart:async';

import 'package:flutter/material.dart';
import 'package:space_app/constants/theme.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final Completer<WebViewPlusController> controller =
      Completer<WebViewPlusController>();

  String webUrl = 'https://www.space.com/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Sblack,
      body: SafeArea(
        child: WebViewPlus(
          initialUrl: webUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewPlusController webViewController) {
            setState(() {
              controller.complete(webViewController);
            });
          },
        ),
      ),
    );
  }
}