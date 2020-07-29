import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:learnmobile/styles/AppColor.dart';

class WebScreen extends StatefulWidget {
  final String url, title;

  const WebScreen({this.url, this.title});

  @override
  _WebScreenState createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: WebviewScaffold(
      url: widget.url,
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 28,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      withZoom: false,
      withLocalStorage: true,
      hidden: true,
      initialChild: Container(
        color: AppColor.primaryLight1,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    )
   );
  }
}
