import 'package:flutter/material.dart';

import 'dart:math' as math;

class CirclePainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _CirclePainter(),
      ),
    );
  }
}

class _CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.purple
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Offset center = Offset(size.width / 2, size.height / 2);

    // canvas.drawCircle(center, 50, paint);

    var path = Path();
    path.addOval(Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: 50,
    ));
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

// ANIMACION

class PolygonPainterAnimate extends StatefulWidget {
  @override
  _PolygonPainterAnimateState createState() => _PolygonPainterAnimateState();
}

class _PolygonPainterAnimateState extends State<PolygonPainterAnimate>
    with TickerProviderStateMixin {
  var _sides = 3.0;

  late Animation<double> animationRotation;
  late AnimationController controller;

  late Animation<double> animationSides;
  late AnimationController controller2;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );

    controller2 = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );

    Tween<double> _radiusTween = Tween(begin: 0.0, end: 200);
    Tween<double> _rotationTween = Tween(begin: -math.pi, end: math.pi);

    animationRotation = _rotationTween.animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.repeat();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

    animationSides = _radiusTween.animate(controller2)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller2.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller2.forward();
        }
      });

    controller.forward();
    controller2.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(animationRotation.value.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text('Polygons'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: AnimatedBuilder(
                animation: animationRotation,
                builder: (context, snapshot) {
                  return CustomPaint(
                    painter: _PolygonPainter(
                        _sides, animationSides.value, animationRotation.value),
                    child: Container(),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text('Sides'),
            ),
            Slider(
              value: _sides,
              min: 3.0,
              max: 10.0,
              label: _sides.toInt().toString(),
              divisions: 7,
              onChanged: (value) {
                setState(() {
                  _sides = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

// POLIGONOS
class PolygonPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _PolygonPainter(3, 50, 3),
      ),
    );
  }
}

class _PolygonPainter extends CustomPainter {
  final double sides;
  final double radius;
  final double radians;
  _PolygonPainter(this.sides, this.radius, this.radians);

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();

    var paint = Paint()
      ..color = Colors.purple
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var angle = (math.pi * 2) / sides;

    Offset center = Offset(size.width / 2, size.height / 2);

    // startPoint => (100.0, 0.0)
    Offset startPoint =
        Offset(radius * math.cos(radians), radius * math.sin(radians));

    path.moveTo(startPoint.dx + center.dx, startPoint.dy + center.dy);

    for (int i = 1; i <= sides; i++) {
      double x = radius * math.cos(radians + angle * i) + center.dx;
      double y = radius * math.sin(radians + angle * i) + center.dy;
      path.lineTo(x, y);
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
