import 'package:shop_app1/models/product.dart';
import 'package:shop_app1/views/FavoriteScreen.dart';
import 'package:shop_app1/views/LoginScreen.dart';
import 'package:shop_app1/views/SendOrder.dart';
import 'package:shop_app1/views/SucceedOrder.dart';
import 'package:shop_app1/views/cart_screen.dart';
import 'package:shop_app1/views/demo.dart';
import 'package:shop_app1/views/details_screen.dart';
import 'package:shop_app1/views/home_screen.dart';
import 'package:shop_app1/views/not_found.dart';
import 'package:shop_app1/views/signup.dart';
import 'package:shop_app1/views/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic>? routeManager(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (ctx) => HomeScreen());
      case '/details':
        {
          return MaterialPageRoute(
              builder: (ctx) => DetailsScreen(
                    p: settings.arguments as Product,
                  ),
              settings: settings);
        }
      case '/cart':
        {
          List<Map<Product, int>> cartItems =
              settings.arguments as List<Map<Product, int>>;
          return MaterialPageRoute(
              builder: (ctx) => CartScreen(cart: cartItems));
        }
      case '/splash':
        return MaterialPageRoute(builder: (ctx) => SplashScreen());
      case '/favorites':
        return MaterialPageRoute(
          builder: (ctx) => FavoritesScreen(favoriteProducts: []),
        );
      case '/demo':
        return MaterialPageRoute(builder: (ctx) => DemoStatefulScreen());
      case '/login':
        return MaterialPageRoute(builder: (ctx) => LoginScreen());
      case '/signup':
        return MaterialPageRoute(builder: (ctx) => signup());
      case '/sendorder':
        return MaterialPageRoute(builder: (ctx) => SendOrder());
      case '/sucOrder':
        return MaterialPageRoute(builder: (ctx) => SucceedOrder());

      default:
        return MaterialPageRoute(builder: (ctx) => NotFoundScreen());
    }
  }
}
