import 'dart:math' as math;

import 'package:flutter/material.dart';

import './phasor_diagram_utils.dart';

/// [PhasorDiagramPainter] is a custom painter that paints a phasor diagram
/// for a three-phase electrical system.
///
/// It graphically represents the voltage and current for each phase, with
/// their corresponding magnitudes and angles. The diagram is drawn
/// based on the provided values and angles, and the painter handles the
/// transformation of these values into visual elements such as arrows or
/// vectors to represent each phasor.
class PhasorDiagramPainter extends CustomPainter {
  /// [diagramSize] defines the size of the painted diagram.
  final double diagramSize;

  ///{@macro phase_one_voltage_value}
  final double phaseOneVoltageValue;

  ///{@macro phase_one_voltage_angle}
  final double phaseOneVoltageAngle;

  ///{@macro phase_two_voltage_value}
  final double phaseTwoVoltageValue;

  ///{@macro phase_two_voltage_angle}
  final double phaseTwoVoltageAngle;

  ///{@macro phase_three_voltage_value}
  final double phaseThreeVoltageValue;

  ///{@macro phase_three_voltage_angle}
  final double phaseThreeVoltageAngle;

  ///{@macro phase_one_current_value}
  final double phaseOneCurrentValue;

  ///{@macro phase_one_current_angle}
  final double phaseOneCurrentAngle;

  ///{@macro phase_two_current_value}
  final double phaseTwoCurrentValue;

  ///{@macro phase_two_current_current}
  final double phaseTwoCurrentAngle;

  ///{@macro phase_three_current_value}
  final double phaseThreeCurrentValue;

  ///{@macro phase_three_current_angle}
  final double phaseThreeCurrentAngle;

  /// Creates a [PhasorDiagramPainter] to draw a phasor diagram representing
  /// the voltages and currents of a three-phase electrical system.
  ///
  /// The [diagramSize] parameter defines the overall size of the canvas where
  /// the diagram will be drawn.
  ///
  /// Each phase is represented by its voltage value and angle (in degrees) and
  /// its current value and angle (in degrees):
  /// - [phaseOneVoltageValue], [phaseOneVoltageAngle] -> Voltage value and
  /// angle for phase one.
  /// - [phaseTwoVoltageValue], [phaseTwoVoltageAngle] -> Voltage value and
  /// angle for phase two.
  /// - [phaseThreeVoltageValue], [phaseThreeVoltageAngle] -> Voltage value
  /// and angle for phase three.
  /// - [phaseOneCurrentValue], [phaseOneCurrentAngle] -> Current value and
  /// angle for phase one.
  /// - [phaseTwoCurrentValue], [phaseTwoCurrentAngle] -> Current value and
  /// angle for phase two.
  /// - [phaseThreeCurrentValue], [phaseThreeCurrentAngle] -> Current value
  /// and angle for phase three.
  ///
  /// The painter translates these values into graphical representations
  /// of phasors, which are drawn as vectors on the diagram.
  PhasorDiagramPainter({
    required this.diagramSize,
    required this.phaseOneVoltageValue,
    required this.phaseOneVoltageAngle,
    required this.phaseTwoVoltageValue,
    required this.phaseTwoVoltageAngle,
    required this.phaseThreeVoltageValue,
    required this.phaseThreeVoltageAngle,
    required this.phaseOneCurrentValue,
    required this.phaseOneCurrentAngle,
    required this.phaseTwoCurrentValue,
    required this.phaseTwoCurrentAngle,
    required this.phaseThreeCurrentValue,
    required this.phaseThreeCurrentAngle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final centerXAxis = diagramSize / 2.0;
    var centerYAxis = diagramSize / 2.0;
    var center = Offset(
      centerXAxis,
      centerYAxis,
    );
    var radius = math.min(
      centerXAxis - 30.0,
      centerYAxis - 30.0,
    );
    List<double> voltageValues = [
      phaseOneVoltageValue,
      phaseTwoVoltageValue,
      phaseThreeVoltageValue
    ];
    List<double> currentValues = [
      phaseOneCurrentValue,
      phaseTwoCurrentValue,
      phaseThreeCurrentValue
    ];

    /// Calculating the maximum voltage value to ensure that vector lengths are
    /// drawn proportionally to their intensity.
    final voltageMaxValue = voltageValues.reduce(math.max);

    /// Calculating the maximum current value to ensure that vector lengths are
    /// drawn proportionally to their intensity.
    final currentMaxValue = currentValues.reduce(math.max);

    /// Drawing circular background
    drawBackground(
      canvas: canvas,
      center: center,
      maxRadius: radius,
    );

    if (voltageMaxValue != 0.0) {
      if (voltageValues[0] != 0.0) {
        /// Drawing phase 1 voltage vector
        drawVector(
          canvas: canvas,
          startPosition: center,
          maxRadius: radius,
          name: 'U\u2081',
          value: voltageValues[0],
          angle: phaseOneVoltageAngle,
          isVoltage: true,
          voltageLengthFactor: voltageValues[0] / voltageMaxValue,
          currentLengthFactor: currentValues[0] / currentMaxValue,
        );
      }

      if (voltageValues[1] != 0.0) {
        /// Drawing phase 2 voltage vector
        drawVector(
          canvas: canvas,
          startPosition: center,
          maxRadius: radius,
          name: 'U\u2082',
          value: voltageValues[1],
          angle: phaseTwoVoltageAngle,
          isVoltage: true,
          voltageLengthFactor: voltageValues[1] / voltageMaxValue,
          currentLengthFactor: currentValues[1] / currentMaxValue,
        );
      }

      if (voltageValues[2] != 0.0) {
        /// Drawing phase 3 voltage vector
        drawVector(
          canvas: canvas,
          startPosition: center,
          maxRadius: radius,
          name: 'U\u2083',
          value: voltageValues[2],
          angle: phaseThreeVoltageAngle,
          isVoltage: true,
          voltageLengthFactor: voltageValues[2] / voltageMaxValue,
          currentLengthFactor: currentValues[2] / currentMaxValue,
        );
      }
    }

    if (currentMaxValue != 0.0) {
      if (currentValues[0] != 0.0) {
        /// Drawing phase 1 current vector
        drawVector(
          canvas: canvas,
          startPosition: center,
          maxRadius: radius,
          name: 'I\u2081',
          value: currentValues[0],
          angle: phaseOneCurrentAngle,
          isVoltage: false,
          voltageLengthFactor: voltageValues[0] / voltageMaxValue,
          currentLengthFactor: currentValues[0] / currentMaxValue,
        );
      }

      if (currentValues[1] != 0.0) {
        /// Drawing phase 2 current vector
        drawVector(
          canvas: canvas,
          startPosition: center,
          maxRadius: radius,
          name: 'I\u2082',
          value: currentValues[1],
          angle: phaseTwoCurrentAngle,
          isVoltage: false,
          voltageLengthFactor: voltageValues[1] / voltageMaxValue,
          currentLengthFactor: currentValues[1] / currentMaxValue,
        );
      }

      if (currentValues[2] != 0.0) {
        /// Drawing phase 3 current vector
        drawVector(
          canvas: canvas,
          startPosition: center,
          maxRadius: radius,
          name: 'I\u2083',
          value: currentValues[2],
          angle: phaseThreeCurrentAngle,
          isVoltage: false,
          voltageLengthFactor: voltageValues[2] / voltageMaxValue,
          currentLengthFactor: currentValues[2] / currentMaxValue,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant PhasorDiagramPainter oldDelegate) {
    return oldDelegate.diagramSize != diagramSize ||
        oldDelegate.phaseOneVoltageValue != phaseOneVoltageValue ||
        oldDelegate.phaseOneVoltageAngle != phaseOneVoltageAngle ||
        oldDelegate.phaseTwoVoltageValue != phaseTwoVoltageValue ||
        oldDelegate.phaseTwoVoltageAngle != phaseTwoVoltageAngle ||
        oldDelegate.phaseThreeVoltageValue != phaseThreeVoltageValue ||
        oldDelegate.phaseThreeVoltageAngle != phaseThreeVoltageAngle ||
        oldDelegate.phaseOneCurrentValue != phaseOneCurrentValue ||
        oldDelegate.phaseOneCurrentAngle != phaseOneCurrentAngle ||
        oldDelegate.phaseTwoCurrentValue != phaseTwoCurrentValue ||
        oldDelegate.phaseTwoCurrentAngle != phaseTwoCurrentAngle ||
        oldDelegate.phaseThreeCurrentValue != phaseThreeCurrentValue ||
        oldDelegate.phaseThreeCurrentAngle != phaseThreeCurrentAngle;
  }
}
