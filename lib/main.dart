import 'package:flutter/material.dart';
import 'package:shop_app1/utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: false,
          appBarTheme: AppBarTheme(color: Color.fromRGBO(8, 68, 135, 1))),
      initialRoute: "/signup",
      onGenerateRoute: AppRoutes.routeManager,
    );
  }
}
