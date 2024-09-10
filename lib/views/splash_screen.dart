import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
    });
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/splash2.jpg"),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
