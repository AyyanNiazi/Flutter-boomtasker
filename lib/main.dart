import 'package:flutter/material.dart';
import 'package:real_time_app/pages/home.dart';
import 'package:real_time_app/pages/choose_location.dart';
import 'package:real_time_app/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    // initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
