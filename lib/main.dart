import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main(){
  runApp(const CVApp());
}

class CVApp extends StatelessWidget {
  const CVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(), 
      debugShowCheckedModeBanner: false, 
      );
  }
}