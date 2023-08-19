import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text('FlutterChat'),
      // ),
      body: Center(
        // child: Text('Loading...'),
        child: CircularProgressIndicator(
          color: Color(0xff075e54),
        ),
      ),
    );
  }
}
