// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:pozadkey_v2/themes/theme.dart';
import 'package:url_strategy/url_strategy.dart';
import 'views/home_view.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pozadkey -  Web & Mobile Engineer',
        theme: theme,
        home: const HomeView());
  }
}
