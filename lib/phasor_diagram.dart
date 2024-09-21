///
/// This package provides an easy way to paint phasor diagrams in Flutter
/// applications using CustomPaint.
///

library phasor_diagram;

import 'package:flutter/material.dart';

import 'src/phasor_diagram_painter.dart';

/// [PhasorDiagram] widget paints a phasor diagram, graphically representing a
/// three-phase electrical energy system.
/// Each phase has its own voltage and current, and every voltage and current
/// is represented by a value and an angle.
class PhasorDiagram extends StatelessWidget {
  /// Creates a [PhasorDiagram] widget to visualize a three-phase electrical
  /// system.
  ///
  /// The [size] parameter defines the overall size of the diagram.
  ///
  /// Each phase is represented by a voltage value and angle, as well as a
  /// current value and angle:
  ///
  /// - [phaseOneVoltageValue], [phaseOneVoltageAngle] -> Voltage value and
  /// angle (in degrees) for phase one.
  ///
  /// - [phaseTwoVoltageValue], [phaseTwoVoltageAngle] -> Voltage value and
  /// angle (in degrees) for phase two.
  ///
  /// - [phaseThreeVoltageValue], [phaseThreeVoltageAngle] -> Voltage value
  /// and angle (in degrees) for phase three.
  ///
  /// - [phaseOneCurrentValue], [phaseOneCurrentAngle] -> Current value and
  /// angle (in degrees) for phase one.
  ///
  /// - [phaseTwoCurrentValue], [phaseTwoCurrentAngle] -> Current value and
  /// angle (in degrees) for phase two.
  ///
  /// - [phaseThreeCurrentValue], [phaseThreeCurrentAngle] -> Current value
  /// and angle (in degrees) for phase three.
  const PhasorDiagram({
    super.key,
    required this.size,
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

  /// [size] defines the size of the [PhasorDiagram] widget.
  final double size;

  /// {@template phase_one_voltage_value}
  /// [phaseOneVoltageValue] represents the voltage value for the first phase.
  /// {@endtemplate}
  final double phaseOneVoltageValue;

  /// {@template phase_one_voltage_angle}
  /// [phaseOneVoltageAngle] represents the voltage angle(in degrees) for the
  /// first phase.
  /// {@endtemplate}
  final double phaseOneVoltageAngle;

  /// {@template phase_two_voltage_value}
  /// [phaseTwoVoltageValue] represents the voltage value for the second phase.
  /// {@endtemplate}
  final double phaseTwoVoltageValue;

  /// {@template phase_two_voltage_angle}
  /// [phaseTwoVoltageAngle] represents the voltage angle(in degrees) for the
  /// second phase.
  /// {@endtemplate}
  final double phaseTwoVoltageAngle;

  /// {@template phase_three_voltage_value}
  /// [phaseThreeVoltageValue] represents the voltage value for the third phase.
  /// {@endtemplate}
  final double phaseThreeVoltageValue;

  /// {@template phase_three_voltage_angle}
  /// [phaseThreeVoltageAngle] represents the voltage angle(in degrees) for the
  /// third phase.
  /// {@endtemplate}
  final double phaseThreeVoltageAngle;

  /// {@template phase_one_current_value}
  /// [phaseOneCurrentValue] represents the current value for the first phase.
  /// {@endtemplate}
  final double phaseOneCurrentValue;

  /// {@template phase_one_current_angle}
  /// [phaseOneCurrentAngle] represents the current angle(in degrees) for the
  /// first phase.
  /// {@endtemplate}
  final double phaseOneCurrentAngle;

  /// {@template phase_two_current_value}
  /// [phaseTwoCurrentValue] represents the current value for the second phase.
  /// {@endtemplate}
  final double phaseTwoCurrentValue;

  /// {@template phase_two_current_angle}
  /// [phaseTwoCurrentAngle] represents the current angle(in degrees) for the
  /// second phase.
  /// {@endtemplate}
  final double phaseTwoCurrentAngle;

  /// {@template phase_three_current_value}
  /// [phaseThreeCurrentValue] represents the current value for the third phase.
  /// {@endtemplate}
  final double phaseThreeCurrentValue;

  /// {@template phase_three_current_angle}
  /// [phaseThreeCurrentAngle] represents the current angle(in degrees) for the
  /// third phase.
  /// {@endtemplate}
  final double phaseThreeCurrentAngle;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(size),
      painter: PhasorDiagramPainter(
        diagramSize: size,
        phaseOneVoltageValue: phaseOneVoltageValue,
        phaseOneVoltageAngle: phaseOneVoltageAngle,
        phaseTwoVoltageValue: phaseTwoVoltageValue,
        phaseTwoVoltageAngle: phaseTwoVoltageAngle,
        phaseThreeVoltageValue: phaseThreeVoltageValue,
        phaseThreeVoltageAngle: phaseThreeVoltageAngle,
        phaseOneCurrentValue: phaseOneCurrentValue,
        phaseOneCurrentAngle: phaseOneCurrentAngle,
        phaseTwoCurrentValue: phaseTwoCurrentValue,
        phaseTwoCurrentAngle: phaseTwoCurrentAngle,
        phaseThreeCurrentValue: phaseThreeCurrentValue,
        phaseThreeCurrentAngle: phaseThreeCurrentAngle,
      ),
    );
  }
}
