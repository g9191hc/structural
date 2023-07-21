import 'package:flutter/material.dart';
import 'package:structural/sample/sample_home_screen.dart';
import 'package:structural/screen/home_screen.dart';

void main() {
  runApp(_App());
}

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'NotoSans'
      ),
      debugShowCheckedModeBanner: false,
      home:
      HomeScreen(),
      // SampleHomeScreen(),
    );
  }
}