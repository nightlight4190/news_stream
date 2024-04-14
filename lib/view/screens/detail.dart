import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_stream/view/screens/home.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailScreen extends StatefulWidget {
  String newsUrl;
  DetailScreen({super.key, required this.newsUrl});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    super.initState();

    setState(() {
      widget.newsUrl = widget.newsUrl.contains("http:")
          ? widget.newsUrl.replaceAll("http:", "https:")
          : widget.newsUrl;
    });
  }

  final Completer<WebViewController> controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Text(
            'News Stream',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.teal,
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Icon(
            Icons.newspaper,
            size: 30,
            color: Colors.teal,
          ),
        ),
        centerTitle: false,
      ),
      body: WebView(
        initialUrl: widget.newsUrl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          setState(() {
            controller.complete(webViewController);
          });
        },
      ),
    );
  }
}
