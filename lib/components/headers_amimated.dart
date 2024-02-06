import 'package:flutter/material.dart';

import 'dart:math' as math;

class DiagonalBoxAnimated extends StatefulWidget {
  @override
  State<DiagonalBoxAnimated> createState() => _DiagonalBoxAnimatedState();
}

class _DiagonalBoxAnimatedState extends State<DiagonalBoxAnimated>
    with TickerProviderStateMixin {
  late Animation<double> _animationPosition;
  late AnimationController _animationControllerPosition;

  @override
  void initState() {
    super.initState();

    _animationControllerPosition = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    Tween<double> positionTween = Tween(begin: 0.0, end: 4);
    // Tween<double> _rotationTween = Tween(begin: -math.pi, end: math.pi);

    _animationPosition = positionTween.animate(_animationControllerPosition)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationControllerPosition.repeat();
        } else if (status == AnimationStatus.dismissed) {
          _animationControllerPosition.forward();
        }
      });

    _animationControllerPosition.forward();
  }

  @override
  void dispose() {
    _animationControllerPosition.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        AnimatedBuilder(
          animation: _animationControllerPosition,
          builder: (context, snapshot) {
            return Positioned(
              top: 5,
              left: 5,
              child: Container(
                height: 400,
                width: 300,
                child: CustomPaint(
                  painter: _DiagonalBoxPainter(color: Colors.black),
                ),
              ),
            );
          },
        ),
        // Expanded(child: child)
        // Container(
        //   height: 400,
        //   width: 300,
        //   child: CustomPaint(
        //     painter: _DiagonalBoxPainter(color: Colors.black),
        //   ),
        // ),
        Positioned(
          top: _animationPosition.value,
          left: 5,
          child: Container(
            height: 400,
            width: 300,
            child: CustomPaint(
              painter: _DiagonalBoxPainter(),
            ),
          ),
        ),
      ],
    );
  }
}

class _DiagonalBoxPainter extends CustomPainter {
  Color color;

  _DiagonalBoxPainter({this.color = Colors.purple}) {}

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = color;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    path.lineTo(0, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderTriangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderTrianglePainter(),
      ),
    );
  }
}

class _HeaderTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    paint.color = Colors.purple;
    paint.style = PaintingStyle.fill; // .fill .stroke
    paint.strokeWidth = 20;

    final path = new Path();
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderPointed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPointedPainter(),
      ),
    );
  }
}

class _HeaderPointedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.purple;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    path.lineTo(0, size.height * 0.30);
    path.lineTo(size.width * 0.5, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = new Paint();

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // .fill .stroke
    lapiz.strokeWidth = 20;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.40, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
    );
  }
}

class _HeaderWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    paint.color = Colors.purple;
    paint.style = PaintingStyle.fill; // .fill .stroke
    paint.strokeWidth = 20;

    final path = new Path();

    path.lineTo(0, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.40,
        size.width * 0.5, size.height * 0.30);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.30);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCirclePainter(),
      ),
    );
  }
}

class _HeaderCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    paint.color = Colors.purple;
    paint.style = PaintingStyle.fill; // .fill .stroke
    paint.strokeWidth = 20;

    final path = new Path();

    // path.lineTo(0, size.height * 0.30);
    path.lineTo(0, size.height * 0.30);

    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.15, size.width, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);

    // path.lineTo(0, size.height * 0.30);
    // path.lineTo(size.width, size.height * 0.30);
    // path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderFooterFAB extends StatelessWidget {
  double sizeFAB;
  double position;
  VoidCallback function;

  HeaderFooterFAB(
      {required this.sizeFAB, required this.position, required this.function});

  @override
  Widget build(BuildContext context) {
    final fab = FloatingActionButton(
      onPressed: function,
      shape: const CircleBorder(),
      child: const Icon(Icons.add),
    );
    // return fab;
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: CustomPaint(
            painter:
                _HeaderFooterFABPainter(sizeFAB: sizeFAB, position: position),
          ),
        ),
        Positioned(
          child: LayoutBuilder(builder: (context, constraints) {
            return Padding(
              padding: EdgeInsets.only(
                  top: (constraints.biggest.height * .3) - (sizeFAB / 2),
                  left: position),
              child: SizedBox(width: sizeFAB, height: sizeFAB, child: fab),
            );
          }),
        ),
      ],
    );
  }
}

class _HeaderFooterFABPainter extends CustomPainter {
  double sizeFAB;
  double position;
  double padding;

  _HeaderFooterFABPainter(
      {required this.sizeFAB, required this.position, this.padding = 5});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = Colors.purple;
    paint.style = PaintingStyle.fill; // .fill .stroke
    paint.strokeWidth = 1;

    final path = Path();

    // Dibujar con el path y el lapiz
    path.lineTo(0, size.height * 0.30);
    path.lineTo(position - padding, size.height * 0.30);

    // path.quadraticBezierTo(
    //     position + sizeFAB * 0.5,
    //     (size.height * 0.30) - (sizeFAB),
    //     position + sizeFAB,
    //     size.height * 0.30);
    path.arcToPoint(
        Offset(
          position + sizeFAB + padding,
          (size.height * 0.30),
        ),
        radius: const Radius.circular(1));

    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
