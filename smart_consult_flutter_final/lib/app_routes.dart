
import 'package:flutter/material.dart';
import 'widgets/auth_gate.dart';
import 'pages/auth/login.dart';
import 'pages/auth/signup.dart';
import 'pages/home/home.dart';

class AppRoutes {
  static const authGate = '/';
  static const login = '/login';
  static const signup = '/signup';
  static const home = '/home';

  static Map<String,WidgetBuilder> routes = {
    authGate: (_) => const AuthGate(),
    login: (_) => const LoginPage(),
    signup: (_) => const SignupPage(),
    home: (_) => const HomePage(),
  };
}
