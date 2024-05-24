// main.dart
import 'package:flutter/material.dart';
import 'package:hunter/screens/loadingscreen.dart';

Future<void> main() async
{

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.blueGrey.shade900,
      ),
      home: SplashScreen(),
    );
  }
}