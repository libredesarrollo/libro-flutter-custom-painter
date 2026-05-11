import 'package:flutter/material.dart';

class HeaderBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      // height: double.infinity,
      color: Colors.purple,
    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          color: Color(0xff615AAB),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            bottomRight: Radius.circular(70),
          )),
    );
  }
}

class DiagonalBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _DiagonalBoxPainter(),
      ),
    );
  }
}

class _DiagonalBoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    paint.color = Colors.purple;
    paint.style = PaintingStyle.fill; // .fill .stroke
    paint.strokeWidth = 20;

    final path = new Path();

    path.lineTo(0, size.height * 0.30);
    // path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    // path.moveTo(0, size.height * 0.30);
    // path.lineTo(size.width, size.height * 0.25);
    // path.lineTo(size.width, 0);
    // path.lineTo(0, 0);

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

    path.lineTo(0, size.height * 0.30);

    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.15, size.width, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderFABPainter(),
      ),
    );
  }
}

class _HeaderFABPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    paint.color = Colors.purple;
    paint.style = PaintingStyle.fill; // .fill .stroke
    paint.strokeWidth = 20;

    final path = new Path();

    path.lineTo(0, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

// ---------------------------------------------------------------------------
// HeaderGradient: demuestra el uso de LinearGradient como shader en un Paint
// ---------------------------------------------------------------------------
class HeaderGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderGradientPainter(),
      ),
    );
  }
}

class _HeaderGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.style = PaintingStyle.fill;

    // Definimos el gradiente usando el Rect que ocupa toda el área del lienzo
    final gradient = LinearGradient(
      colors: [Colors.purple, Colors.deepPurpleAccent, Colors.indigo],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    // createShader convierte el gradiente en un shader compatible con Paint
    paint.shader = gradient.createShader(
      Rect.fromLTWH(0, 0, size.width, size.height),
    );

    final path = Path();
    path.lineTo(0, size.height * 0.30);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_HeaderGradientPainter oldDelegate) => false;
}

// ---------------------------------------------------------------------------
// HeaderWithText: demuestra cómo dibujar texto sobre el Canvas con TextPainter
// ---------------------------------------------------------------------------
class HeaderWithText extends StatelessWidget {
  final String title;
  const HeaderWithText({super.key, this.title = 'Mi App'});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        // foregroundPainter pinta ENCIMA del child; painter pinta DEBAJO
        foregroundPainter: _HeaderWithTextPainter(title: title),
        painter: _HeaderGradientPainter(),
      ),
    );
  }
}

class _HeaderWithTextPainter extends CustomPainter {
  final String title;
  _HeaderWithTextPainter({required this.title});

  @override
  void paint(Canvas canvas, Size size) {
    // 1. Configurar el estilo del texto
    final textSpan = TextSpan(
      text: title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(blurRadius: 4, color: Colors.black45, offset: Offset(2, 2)),
        ],
      ),
    );

    // 2. Crear el TextPainter y hacer el layout
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(minWidth: 0, maxWidth: size.width - 32);

    // 3. Calcular la posición centrada horizontalmente, en el tercio superior
    final offsetX = (size.width - textPainter.width) / 2;
    final offsetY = (size.height * 0.30 - textPainter.height) / 2;

    // 4. Pintar el texto en el canvas
    textPainter.paint(canvas, Offset(offsetX, offsetY));
  }

  @override
  bool shouldRepaint(_HeaderWithTextPainter oldDelegate) =>
      oldDelegate.title != title;
}

// ---------------------------------------------------------------------------
// shouldRepaint inteligente: sólo repinta cuando el color cambia
// ---------------------------------------------------------------------------
class HeaderShouldRepaint extends StatelessWidget {
  final Color color;
  const HeaderShouldRepaint({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _SmartDiagonalPainter(color: color),
      ),
    );
  }
}

class _SmartDiagonalPainter extends CustomPainter {
  final Color color;
  const _SmartDiagonalPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path()
      ..lineTo(0, size.height * 0.30)
      ..lineTo(size.width, size.height * 0.25)
      ..lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  /// Solo repinta si el color realmente cambió.
  /// Retornar true siempre fuerza un repintado en cada frame, lo cual
  /// puede impactar el rendimiento cuando el painter no cambia.
  @override
  bool shouldRepaint(_SmartDiagonalPainter oldDelegate) =>
      oldDelegate.color != color;
}
