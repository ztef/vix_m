import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SPLASH'),
      ),
      body: Center(
        child: Image.asset('assets/logo.png'),
      ),
    );
  }
}
