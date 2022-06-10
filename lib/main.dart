import 'package:flutter/material.dart';
import 'package:good_eats/ui/pages/detail_food_page.dart';
import 'package:good_eats/ui/pages/detail_resto_page.dart';
import 'package:good_eats/ui/pages/login_page.dart';
import 'package:good_eats/ui/pages/main_page.dart';
import 'package:good_eats/ui/pages/sign_up_page.dart';
import 'package:good_eats/ui/pages/success_page.dart';
import 'ui/pages/splash_page.dart';
import 'ui/pages/get_started_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/': (context) => MainPage(),
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/log-in': (context) => LoginPage(),
        '/detail-resto-page': (context) => DetailRestoPage(),
        '/detail-food-page': (context) => DetailFoodPage(),
        '/success': (context) => SuccessPage(),
      },
    );
  }
}
