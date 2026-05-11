import 'package:custompainter/components/figures.dart';
import 'package:custompainter/components/headers.dart';
import 'package:custompainter/components/headers_amimated.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Intercambia el widget para probar cada ejemplo:
        // body: DiagonalBox(),
        // body: HeaderTriangle(),
        // body: HeaderPointed(),
        // body: HeaderCurvo(),
        // body: HeaderWave(),
        // body: HeaderGradient(),
        // body: HeaderWithText(title: 'Mi Header'),
        // body: HeaderShouldRepaint(color: Colors.deepPurple),
        // body: CirclePainter(),
        // body: PolygonPainter(),
        // body: PolygonPainterAnimate(),
        // body: DiagonalBoxAnimated(),
        body: HeaderFooterFAB(
          position: 60,
          sizeFAB: 50,
          function: () => print('Hello world'),
        ),
      ),
    );
  }
}
