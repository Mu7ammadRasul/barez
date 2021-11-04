import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() {
  runApp(const MaterialApp(
    home: barez(),
    debugShowCheckedModeBanner: false,
    title: 'barez',
  ));
}

class barez extends StatefulWidget {
  const barez({ Key? key }) : super(key: key);

  @override
  _barezState createState() => _barezState();
}

class _barezState extends State<barez> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: SafeArea(
        child: WebviewScaffold(
          withZoom: true,
          clearCache: false,
          appCacheEnabled: true,
          url: 'https://barezbid.com/index.php',
          displayZoomControls: true,
          
        ),
      ),
    );
  }
}