import 'package:flutter/material.dart';
import 'package:ft_fifth/ScreenA.dart';
import 'package:ft_fifth/ScreenB.dart';
import 'package:ft_fifth/ScreenC.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
      },
    );
  }
}
