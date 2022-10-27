import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PromoPage extends StatefulWidget {
  final PageController controller;
  const PromoPage({Key? key, required this.controller}) : super(key: key);

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl:
            'https://www.tradays.com/en/economic-calendar/widget?mode=2&dateFormat=DMY',
        onPageFinished: (finish) {
          setState(() {
            isLoading = false;
          });
        },
      ),
      isLoading ? Center(child: CircularProgressIndicator.adaptive()) : Stack()
    ]);
  }
}
