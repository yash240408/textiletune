import 'package:flutter/material.dart';
import 'package:textiletune/Screen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Textile Calculator',
      color: Color.fromARGB(255, 144, 143, 143),
      home: SplashScreen(),
    );
  }
}