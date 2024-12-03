import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:alchemist/alchemist.dart';

import 'package:phasor_diagram/phasor_diagram.dart';

void main() {
  /// Golden testing
  group('PhasorDiagram Golden Tests', () {
    goldenTest(
      'renders correctly',
      fileName: 'phasor_diagram',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
            constraints: const BoxConstraints(
              maxWidth: 400.0,
              maxHeight: 400.0,
            ),
            name: 'The most common values.',
            child: const PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 220.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: 220.0,
              phaseTwoVoltageAngle: 120.0,
              phaseThreeVoltageValue: 220.0,
              phaseThreeVoltageAngle: 240.0,
              phaseOneCurrentValue: 1.1,
              phaseOneCurrentAngle: 15.0,
              phaseTwoCurrentValue: 1.1,
              phaseTwoCurrentAngle: 135.0,
              phaseThreeCurrentValue: 1.1,
              phaseThreeCurrentAngle: 255.0,
            ),
          ),
          GoldenTestScenario(
            constraints: const BoxConstraints(
              maxWidth: 400.0,
              maxHeight: 400.0,
            ),
            name: 'phaseOneVoltageValue is zero.',
            child: const PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 0.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: 220.0,
              phaseTwoVoltageAngle: 120.0,
              phaseThreeVoltageValue: 220.0,
              phaseThreeVoltageAngle: 240.0,
              phaseOneCurrentValue: 1.1,
              phaseOneCurrentAngle: 15.0,
              phaseTwoCurrentValue: 1.1,
              phaseTwoCurrentAngle: 135.0,
              phaseThreeCurrentValue: 1.1,
              phaseThreeCurrentAngle: 255.0,
            ),
          ),
          GoldenTestScenario(
            constraints: const BoxConstraints(
              maxWidth: 400.0,
              maxHeight: 400.0,
            ),
            name: 'phaseOneVoltageValue is drastically different from other '
                'phases values.',
            child: const PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 20.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: 220.0,
              phaseTwoVoltageAngle: 120.0,
              phaseThreeVoltageValue: 220.0,
              phaseThreeVoltageAngle: 240.0,
              phaseOneCurrentValue: 1.1,
              phaseOneCurrentAngle: 15.0,
              phaseTwoCurrentValue: 1.1,
              phaseTwoCurrentAngle: 135.0,
              phaseThreeCurrentValue: 1.1,
              phaseThreeCurrentAngle: 255.0,
            ),
          ),
          GoldenTestScenario(
            constraints: const BoxConstraints(
              maxWidth: 400.0,
              maxHeight: 400.0,
            ),
            name: 'Voltage values of all three phases are different.',
            child: const PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 20.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: 120.0,
              phaseTwoVoltageAngle: 120.0,
              phaseThreeVoltageValue: 220.0,
              phaseThreeVoltageAngle: 240.0,
              phaseOneCurrentValue: 1.1,
              phaseOneCurrentAngle: 15.0,
              phaseTwoCurrentValue: 1.1,
              phaseTwoCurrentAngle: 135.0,
              phaseThreeCurrentValue: 1.1,
              phaseThreeCurrentAngle: 255.0,
            ),
          ),
          GoldenTestScenario(
            constraints: const BoxConstraints(
              maxWidth: 400.0,
              maxHeight: 400.0,
            ),
            name: 'phaseOneCurrentValue is zero.',
            child: const PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 220.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: 220.0,
              phaseTwoVoltageAngle: 120.0,
              phaseThreeVoltageValue: 220.0,
              phaseThreeVoltageAngle: 240.0,
              phaseOneCurrentValue: 0.0,
              phaseOneCurrentAngle: 15.0,
              phaseTwoCurrentValue: 1.1,
              phaseTwoCurrentAngle: 135.0,
              phaseThreeCurrentValue: 1.1,
              phaseThreeCurrentAngle: 255.0,
            ),
          ),
          GoldenTestScenario(
            constraints: const BoxConstraints(
              maxWidth: 400.0,
              maxHeight: 400.0,
            ),
            name: '''phaseOneCurrentValue is drastically different from other 
                phases values.''',
            child: const PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 220.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: 220.0,
              phaseTwoVoltageAngle: 120.0,
              phaseThreeVoltageValue: 220.0,
              phaseThreeVoltageAngle: 240.0,
              phaseOneCurrentValue: 0.1,
              phaseOneCurrentAngle: 15.0,
              phaseTwoCurrentValue: 1.1,
              phaseTwoCurrentAngle: 135.0,
              phaseThreeCurrentValue: 1.1,
              phaseThreeCurrentAngle: 255.0,
            ),
          ),
          GoldenTestScenario(
            constraints: const BoxConstraints(
              maxWidth: 400.0,
              maxHeight: 400.0,
            ),
            name: 'Current values of all three phases are different.',
            child: const PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 220.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: 220.0,
              phaseTwoVoltageAngle: 120.0,
              phaseThreeVoltageValue: 220.0,
              phaseThreeVoltageAngle: 240.0,
              phaseOneCurrentValue: 0.1,
              phaseOneCurrentAngle: 15.0,
              phaseTwoCurrentValue: 0.5,
              phaseTwoCurrentAngle: 135.0,
              phaseThreeCurrentValue: 1.1,
              phaseThreeCurrentAngle: 255.0,
            ),
          ),
          GoldenTestScenario(
            constraints: const BoxConstraints(
              maxWidth: 400.0,
              maxHeight: 400.0,
            ),
            name: 'All the values are zero.',
            child: const PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 0.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: 0.0,
              phaseTwoVoltageAngle: 120.0,
              phaseThreeVoltageValue: 0.0,
              phaseThreeVoltageAngle: 240.0,
              phaseOneCurrentValue: 0.0,
              phaseOneCurrentAngle: 15.0,
              phaseTwoCurrentValue: 0.0,
              phaseTwoCurrentAngle: 135.0,
              phaseThreeCurrentValue: 0.0,
              phaseThreeCurrentAngle: 255.0,
            ),
          ),
          GoldenTestScenario(
            constraints: const BoxConstraints(
              maxWidth: 400.0,
              maxHeight: 400.0,
            ),
            name: 'All the angles are zero.',
            child: const PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 220.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: 220.0,
              phaseTwoVoltageAngle: 0.0,
              phaseThreeVoltageValue: 220.0,
              phaseThreeVoltageAngle: 0.0,
              phaseOneCurrentValue: 1.1,
              phaseOneCurrentAngle: 0.0,
              phaseTwoCurrentValue: 1.1,
              phaseTwoCurrentAngle: 0.0,
              phaseThreeCurrentValue: 1.1,
              phaseThreeCurrentAngle: 0.0,
            ),
          ),
        ],
      ),
    );
  });
}
