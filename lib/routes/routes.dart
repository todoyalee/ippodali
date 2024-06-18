import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ippodali/views/home.dart';
import 'package:ippodali/views/login.dart';

class routes {
  static String splashScreen = "/";
  static String home = "/home";
  static String login = "/login";

  static List<GetPage> pages = [
    GetPage(name: splashScreen, page: () => HomeScreen()),
    GetPage(name: login, page: () => LoginScreen()),
  ];
}
