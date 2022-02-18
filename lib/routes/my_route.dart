import 'package:exam/screens/home_page.dart';
import 'package:exam/screens/log_in_page.dart';
import 'package:exam/screens/sign_up_page.dart';
import 'package:exam/screens/splash_screen_page.dart';
import 'package:flutter/material.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case '/':        
        return MaterialPageRoute(builder: (_) => const SplashScreenPage());
      case '/log_in':        
        return MaterialPageRoute(builder: (_) => const LogInPage());
      case '/sign_up':        
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case '/home':        
        return MaterialPageRoute(builder: (_) => const MyHomePage());
    }
  }
}
