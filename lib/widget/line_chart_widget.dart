import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class LineChartWidget extends StatelessWidget {
  final List<double> points;
  final double height;

  const LineChartWidget({Key? key, required this.points, this.height = 64})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LineChartPainter(points),
      child: SizedBox(
        height: height,
        width: height * 2,
      ),
    );
  }
}

class LineChartPainter extends CustomPainter {
  final List<double> points;

  LineChartPainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    double dx = size.width / (points.length - 1);

    double height = size.height;

    double width = size.width;

    Path path = Path();

    Path path2 = Path();

    path.moveTo(0, size.height);

    path2.moveTo(0, size.height);

    path.relativeMoveTo(0, -size.height * points[0]);
    path2.relativeMoveTo(0, -size.height * points[0]);

    for (int i = 1; i < points.length; i++) {
      if (points[i] > points[i - 1]) {
        //start
        path.relativeCubicTo(
            dx / 2,
            0,
            dx / 2,
            -(points[i] - points[i - 1]) * height,
            dx,
            -(points[i] - points[i - 1]) * height);
        path2.relativeCubicTo(
            dx / 2,
            0,
            dx / 2,
            -(points[i] - points[i - 1]) * height,
            dx,
            -(points[i] - points[i - 1]) * height);
      } else {
        //end
        path.relativeCubicTo(
            dx / 2,
            0,
            dx / 2,
            -(points[i] - points[i - 1]) * height,
            dx,
            -(points[i] - points[i - 1]) * height);
        path2.relativeCubicTo(
            dx / 2,
            0,
            dx / 2,
            -(points[i] - points[i - 1]) * height,
            dx,
            -(points[i] - points[i - 1]) * height);
      }
    }

    path2.lineTo(width, size.height);

    path2.lineTo(0, size.height);

    // path2.lineTo(0, size.height);

    Paint paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    Paint paint2 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 2;
    paint2.shader = ui.Gradient.linear(Offset(width / 2, 0),
        Offset(width / 2, height), [Colors.green, Colors.transparent]);

    canvas.drawPath(path, paint);

    canvas.drawPath(path2, paint2);

    // path.relativeMoveTo(dx, dy);
    // Paint paint = Paint();
    // paint.
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
