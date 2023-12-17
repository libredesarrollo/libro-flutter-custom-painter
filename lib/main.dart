// import 'package:custompainter/components/headers.dart';
// import 'package:custompainter/components/figures.dart';
import 'package:custompainter/components/headers_amimated.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: DiagonalBoxAnimated()),
    );
  }
}
