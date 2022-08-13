import 'package:flutter/material.dart';
import 'package:onbording/onbording_screen.dart';
//commit 13/8/2022
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      locale: Locale('en'),
      debugShowCheckedModeBanner: false,
      home: OnbordingScreen(),
    );
  }
}
