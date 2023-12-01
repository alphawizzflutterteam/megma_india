import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screen/Splash Screen/splash_scr.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,

  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magma India',


      home: const SplashScreen(),
    );

  }
}

