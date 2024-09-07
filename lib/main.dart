import 'package:flutter/material.dart';
import 'package:shop_app1/views/LoginScreen.dart';
import 'package:shop_app1/views/cart_screen.dart';
import 'package:shop_app1/views/details_screen.dart';
import 'package:shop_app1/views/home_screen.dart';
import 'package:shop_app1/views/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      // home: HomeScreen(),
      routes: {
        "/home": (ctx) => HomeScreen(),
        "/details": (ctx) => DetailsScreen(),
        "/cart": (ctx) => CartScreen(),
        "/splash": (ctx) => SplashScreen(),
        "/login": (ctx) => LoginScreen(),
      },
    );
  }
}
