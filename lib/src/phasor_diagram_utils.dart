import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

/// Draws the circular background for voltage and current vectors.
void drawBackground({
  required Canvas canvas,
  required Offset center,
  required double maxRadius,
}) {
  var backgroundCircleFillBrush = Paint();
  var decorativeCircleFillBrush = Paint();
  var voltageCircleOutlineBrush = Paint();
  var currentCircleOutlineBrush = Paint();
  var voltageCircleOutlinePath = Path();
  var currentCircleOutlinePath = Path();
  var voltageCircleRadius = maxRadius * 0.75 + 13.0; // arrowHeight = 13.0
  var currentCircleRadius = maxRadius * 0.4 + 13.0; // arrowHeight = 13.0
  var decorativeCircleRadius = maxRadius * 0.13;

  backgroundCircleFillBrush.shader = const LinearGradient(
    colors: [
      Color(0xfff2f2f2),
      Color(0xfff7f7f7),
    ],
  ).createShader(Rect.fromCircle(
    center: center,
    radius: voltageCircleRadius,
  ));

  voltageCircleOutlineBrush
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1
    ..color = const Color(0xff014b75); // Voltage blue

  currentCircleOutlineBrush
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1
    ..color = const Color(0xffc10c13); // Current red

  decorativeCircleFillBrush
    ..style = PaintingStyle.fill
    ..color = const Color(0xff31a4dd); // Decorative blue

  voltageCircleOutlinePath.addOval(Rect.fromCircle(
    center: center,
    radius: voltageCircleRadius,
  ));

  currentCircleOutlinePath.addOval(Rect.fromCircle(
    center: center,
    radius: currentCircleRadius,
  ));

  /// Background circle
  canvas.drawCircle(
    center,
    voltageCircleRadius,
    backgroundCircleFillBrush,
  );

  /// Decorative circle
  canvas.drawCircle(
    center,
    decorativeCircleRadius,
    decorativeCircleFillBrush,
  );

  /// Voltage circle outline
  canvas.drawPath(
    voltageCircleOutlinePath,
    voltageCircleOutlineBrush,
  );

  /// Current circle outline
  canvas.drawPath(
    currentCircleOutlinePath,
    currentCircleOutlineBrush,
  );
}

/// Draws voltage and current vectors
void drawVector({
  required Canvas canvas,
  required Offset startPosition,
  required String name,
  required double value,
  required double angle,
  required bool isVoltage,
  required double maxRadius,
  required double voltageLengthFactor,
  required double currentLengthFactor,
}) {
  final Color color =
      isVoltage ? const Color(0xff014b75) : const Color(0xffc10c13);
  final double length = isVoltage
      ? maxRadius * 0.75 * voltageLengthFactor
      : maxRadius * 0.4 * currentLengthFactor;
  final double strokeWidth = isVoltage ? 2.5 : 3.5;
  Offset endPosition;
  const double arrowTipLength = 10.0;
  final vectorBrush = Paint()
    ..color = color
    ..strokeWidth = strokeWidth;

  /// Calculating vector's end position
  Offset vectorEndPosition({
    required double centerXAxis,
    required double centerYAxis,
    required double length,
    required double angle,
  }) {
    var endPositionXAxis =
        centerXAxis + length * math.cos(angle * math.pi / 180.0);
    var endPositionYAxis =
        centerYAxis + length * math.sin(angle * math.pi / 180.0);
    return Offset(
      endPositionXAxis,
      endPositionYAxis,
    );
  }

  endPosition = vectorEndPosition(
    centerXAxis: startPosition.dx,
    centerYAxis: startPosition.dy,
    length: length,
    angle: angle,
  );

  /// Drawing vector tip
  void drawArrowTip({
    required Canvas canvas,
    required ui.Paint arrowTipBrush,
    required Offset startPosition,
    required double angleInRadians,
    required double arrowTipLength,
  }) {
    final angleInDegrees = angleInRadians * math.pi / 180.0;
    final arrowTipPath = Path();

    arrowTipPath.moveTo(
      startPosition.dx +
          (arrowTipLength / 2.0) * math.cos(angleInDegrees + math.pi / 2.0),
      startPosition.dy +
          (arrowTipLength / 2.0) * math.sin(angleInDegrees + math.pi / 2.0),
    );

    arrowTipPath.lineTo(
      startPosition.dx -
          (arrowTipLength * math.pow(3.0, 1.0 / 2.0) / 2.0) *
              1.5 *
              math.cos(angleInDegrees + math.pi),
      startPosition.dy -
          (arrowTipLength * math.pow(3.0, 1.0 / 2.0) / 2.0) *
              1.5 *
              math.sin(angleInDegrees + math.pi),
    );

    arrowTipPath.lineTo(
      startPosition.dx -
          (arrowTipLength / 2.0) * math.cos(angleInDegrees + math.pi / 2.0),
      startPosition.dy -
          (arrowTipLength / 2.0) * math.sin(angleInDegrees + math.pi / 2.0),
    );

    arrowTipPath.close();

    canvas.drawPath(arrowTipPath, arrowTipBrush);
  }

  /// Drawing vector label
  void drawVectorLabel({
    required Canvas canvas,
    required String label,
    required Offset endPosition,
    required double angleInDegrees,
    required double arrowTipLength,
    required Color color,
  }) {
    var angleInRadians = angleInDegrees * math.pi / 180.0;
    var textStyle = TextStyle(
      color: color,
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
    );
    var textSpan = TextSpan(
      text: label,
      style: textStyle,
    );
    var textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    );
    final Offset drawPosition = Offset(
      endPosition.dx -
          (arrowTipLength + 20.0) * math.cos(angleInRadians + math.pi) -
          20.0 * math.cos(0.0),
      endPosition.dy -
          (arrowTipLength + 20.0) * math.sin(angleInRadians + math.pi) -
          15.0 * math.sin(math.pi / 2.0),
    );

    textPainter.layout(
      minWidth: 40.0,
      maxWidth: 40.0,
    );

    textPainter.paint(canvas, drawPosition);
  }

  /// Drawing vector line
  canvas.drawLine(
    startPosition,
    endPosition,
    vectorBrush,
  );

  drawArrowTip(
    canvas: canvas,
    arrowTipBrush: vectorBrush,
    startPosition: endPosition,
    angleInRadians: angle,
    arrowTipLength: arrowTipLength,
  );

  drawVectorLabel(
    canvas: canvas,
    label: name,
    endPosition: endPosition,
    angleInDegrees: angle,
    arrowTipLength: arrowTipLength,
    color: color,
  );
}
