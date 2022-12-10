import 'package:flutter/material.dart';
import 'package:flutterexample/web_view_test.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: const Text("WebView"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebViewTest()));
          },
        ),
      ),
    );
  }
}
