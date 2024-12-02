import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:alchemist/alchemist.dart';

import 'package:phasor_diagram/phasor_diagram.dart';

void main() {
  /// Widget testing
  group(
    'PhasorDiagram Widget Tests',
    () {
      testWidgets(
          'Checking if PhasorDiagram has the same size as it was defined.',
          (tester) async {
        const definedSize = 100.0;
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: Center(
                child: PhasorDiagram(
                  size: definedSize,
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
            ),
          ),
        );

        final finder = find.byType(PhasorDiagram);
        final size = tester.getSize(finder);

        expect(size.width, equals(definedSize));
        expect(size.height, equals(definedSize));
      });

      testWidgets(
          '''Checking if PhasorDiagram throws assertion error when size is less 
          then 100.0''', (tester) async {
        await expectLater(
          () async => await tester.pumpWidget(
            PhasorDiagram(
              size: 50.0,
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
          throwsAssertionError,
        );
      });

      testWidgets(
          '''Checking if PhasorDiagram throws assertion error when value of
          phaseOneVoltageValue is negative.''', (tester) async {
        await expectLater(
              () async => await tester.pumpWidget(
            PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: -220.0,
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
          throwsAssertionError,
        );
      });

      testWidgets(
          '''Checking if PhasorDiagram throws assertion error when value of
          phaseOneVoltageAngle is negative.''', (tester) async {
        await expectLater(
              () async => await tester.pumpWidget(
            PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 220.0,
              phaseOneVoltageAngle: -5.0,
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
          throwsAssertionError,
        );
      });

      testWidgets(
          '''Checking if PhasorDiagram throws assertion error when value of
          phaseTwoVoltageValue is negative.''', (tester) async {
        await expectLater(
              () async => await tester.pumpWidget(
            PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 220.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: -220.0,
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
          throwsAssertionError,
        );
      });

      testWidgets(
          '''Checking if PhasorDiagram throws assertion error when value of
          phaseTwoVoltageAngle is negative.''', (tester) async {
        await expectLater(
              () async => await tester.pumpWidget(
            PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 220.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: 220.0,
              phaseTwoVoltageAngle: -120.0,
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
          throwsAssertionError,
        );
      });

      testWidgets(
          '''Checking if PhasorDiagram throws assertion error when value of
          phaseThreeVoltageValue is negative.''', (tester) async {
        await expectLater(
              () async => await tester.pumpWidget(
            PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 220.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: 220.0,
              phaseTwoVoltageAngle: 120.0,
              phaseThreeVoltageValue: -220.0,
              phaseThreeVoltageAngle: 240.0,
              phaseOneCurrentValue: 1.1,
              phaseOneCurrentAngle: 15.0,
              phaseTwoCurrentValue: 1.1,
              phaseTwoCurrentAngle: 135.0,
              phaseThreeCurrentValue: 1.1,
              phaseThreeCurrentAngle: 255.0,
            ),
          ),
          throwsAssertionError,
        );
      });

      testWidgets(
          '''Checking if PhasorDiagram throws assertion error when value of
          phaseThreeVoltageAngle is negative.''', (tester) async {
        await expectLater(
              () async => await tester.pumpWidget(
            PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 220.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: 220.0,
              phaseTwoVoltageAngle: 120.0,
              phaseThreeVoltageValue: 220.0,
              phaseThreeVoltageAngle: -240.0,
              phaseOneCurrentValue: 1.1,
              phaseOneCurrentAngle: 15.0,
              phaseTwoCurrentValue: 1.1,
              phaseTwoCurrentAngle: 135.0,
              phaseThreeCurrentValue: 1.1,
              phaseThreeCurrentAngle: 255.0,
            ),
          ),
          throwsAssertionError,
        );
      });

      testWidgets(
          '''Checking if PhasorDiagram throws assertion error when value of
          phaseOneCurrentValue is negative.''', (tester) async {
        await expectLater(
              () async => await tester.pumpWidget(
            PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 220.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: 220.0,
              phaseTwoVoltageAngle: 120.0,
              phaseThreeVoltageValue: 220.0,
              phaseThreeVoltageAngle: 240.0,
              phaseOneCurrentValue: -1.1,
              phaseOneCurrentAngle: 15.0,
              phaseTwoCurrentValue: 1.1,
              phaseTwoCurrentAngle: 135.0,
              phaseThreeCurrentValue: 1.1,
              phaseThreeCurrentAngle: 255.0,
            ),
          ),
          throwsAssertionError,
        );
      });

      testWidgets(
          '''Checking if PhasorDiagram throws assertion error when value of
          phaseOneCurrentAngle is negative.''', (tester) async {
        await expectLater(
              () async => await tester.pumpWidget(
            PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 220.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: 220.0,
              phaseTwoVoltageAngle: 120.0,
              phaseThreeVoltageValue: 220.0,
              phaseThreeVoltageAngle: 240.0,
              phaseOneCurrentValue: 1.1,
              phaseOneCurrentAngle: -15.0,
              phaseTwoCurrentValue: 1.1,
              phaseTwoCurrentAngle: 135.0,
              phaseThreeCurrentValue: 1.1,
              phaseThreeCurrentAngle: 255.0,
            ),
          ),
          throwsAssertionError,
        );
      });

      testWidgets(
          '''Checking if PhasorDiagram throws assertion error when value of
          phaseTwoCurrentValue is negative.''', (tester) async {
        await expectLater(
              () async => await tester.pumpWidget(
            PhasorDiagram(
              size: 200.0,
              phaseOneVoltageValue: 220.0,
              phaseOneVoltageAngle: 0.0,
              phaseTwoVoltageValue: 220.0,
              phaseTwoVoltageAngle: 120.0,
              phaseThreeVoltageValue: 220.0,
              phaseThreeVoltageAngle: 240.0,
              phaseOneCurrentValue: 1.1,
              phaseOneCurrentAngle: 15.0,
              phaseTwoCurrentValue: -1.1,
              phaseTwoCurrentAngle: 135.0,
              phaseThreeCurrentValue: 1.1,
              phaseThreeCurrentAngle: 255.0,
            ),
          ),
          throwsAssertionError,
        );
      });

      testWidgets(
          '''Checking if PhasorDiagram throws assertion error when value of
          phaseTwoCurrentAngle is negative.''', (tester) async {
        await expectLater(
              () async => await tester.pumpWidget(
            PhasorDiagram(
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
              phaseTwoCurrentAngle: -135.0,
              phaseThreeCurrentValue: 1.1,
              phaseThreeCurrentAngle: 255.0,
            ),
          ),
          throwsAssertionError,
        );
      });

      testWidgets(
          '''Checking if PhasorDiagram throws assertion error when value of
          phaseThreeCurrentValue is negative.''', (tester) async {
        await expectLater(
              () async => await tester.pumpWidget(
            PhasorDiagram(
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
              phaseThreeCurrentValue: -1.1,
              phaseThreeCurrentAngle: 255.0,
            ),
          ),
          throwsAssertionError,
        );
      });

      testWidgets(
          '''Checking if PhasorDiagram throws assertion error when value of
          phaseThreeCurrentAngle is negative.''', (tester) async {
        await expectLater(
              () async => await tester.pumpWidget(
            PhasorDiagram(
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
              phaseThreeCurrentAngle: -255.0,
            ),
          ),
          throwsAssertionError,
        );
      });

    },
  );

  /// Golden testing
  group('PhasorDiagram Golden Tests', () {
    goldenTest(
      'renders correctly',
      fileName: 'phasor_diagram',
      builder: () => GoldenTestGroup(
        children: [
          GoldenTestScenario(
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
          // GoldenTestScenario(
          //   name: 'phaseOneVoltageValue is zero.',
          //   child: const PhasorDiagram(
          //     size: 200.0,
          //     phaseOneVoltageValue: 0.0,
          //     phaseOneVoltageAngle: 0.0,
          //     phaseTwoVoltageValue: 220.0,
          //     phaseTwoVoltageAngle: 120.0,
          //     phaseThreeVoltageValue: 220.0,
          //     phaseThreeVoltageAngle: 240.0,
          //     phaseOneCurrentValue: 1.1,
          //     phaseOneCurrentAngle: 15.0,
          //     phaseTwoCurrentValue: 1.1,
          //     phaseTwoCurrentAngle: 135.0,
          //     phaseThreeCurrentValue: 1.1,
          //     phaseThreeCurrentAngle: 255.0,
          //   ),
          // ),
          // GoldenTestScenario(
          //   name: 'phaseOneVoltageValue is drastically different from other '
          //       'phases values.',
          //   child: const PhasorDiagram(
          //     size: 200.0,
          //     phaseOneVoltageValue: 20.0,
          //     phaseOneVoltageAngle: 0.0,
          //     phaseTwoVoltageValue: 220.0,
          //     phaseTwoVoltageAngle: 120.0,
          //     phaseThreeVoltageValue: 220.0,
          //     phaseThreeVoltageAngle: 240.0,
          //     phaseOneCurrentValue: 1.1,
          //     phaseOneCurrentAngle: 15.0,
          //     phaseTwoCurrentValue: 1.1,
          //     phaseTwoCurrentAngle: 135.0,
          //     phaseThreeCurrentValue: 1.1,
          //     phaseThreeCurrentAngle: 255.0,
          //   ),
          // ),
          // GoldenTestScenario(
          //   name: 'Voltage values of all three phases are different.',
          //   child: const PhasorDiagram(
          //     size: 200.0,
          //     phaseOneVoltageValue: 20.0,
          //     phaseOneVoltageAngle: 0.0,
          //     phaseTwoVoltageValue: 120.0,
          //     phaseTwoVoltageAngle: 120.0,
          //     phaseThreeVoltageValue: 220.0,
          //     phaseThreeVoltageAngle: 240.0,
          //     phaseOneCurrentValue: 1.1,
          //     phaseOneCurrentAngle: 15.0,
          //     phaseTwoCurrentValue: 1.1,
          //     phaseTwoCurrentAngle: 135.0,
          //     phaseThreeCurrentValue: 1.1,
          //     phaseThreeCurrentAngle: 255.0,
          //   ),
          // ),
          // GoldenTestScenario(
          //   name: 'phaseOneCurrentValue is zero.',
          //   child: const PhasorDiagram(
          //     size: 200.0,
          //     phaseOneVoltageValue: 220.0,
          //     phaseOneVoltageAngle: 0.0,
          //     phaseTwoVoltageValue: 220.0,
          //     phaseTwoVoltageAngle: 120.0,
          //     phaseThreeVoltageValue: 220.0,
          //     phaseThreeVoltageAngle: 240.0,
          //     phaseOneCurrentValue: 0.0,
          //     phaseOneCurrentAngle: 15.0,
          //     phaseTwoCurrentValue: 1.1,
          //     phaseTwoCurrentAngle: 135.0,
          //     phaseThreeCurrentValue: 1.1,
          //     phaseThreeCurrentAngle: 255.0,
          //   ),
          // ),
          // GoldenTestScenario(
          //   name: '''phaseOneCurrentValue is drastically different from other
          //       phases values.''',
          //   child: const PhasorDiagram(
          //     size: 200.0,
          //     phaseOneVoltageValue: 220.0,
          //     phaseOneVoltageAngle: 0.0,
          //     phaseTwoVoltageValue: 220.0,
          //     phaseTwoVoltageAngle: 120.0,
          //     phaseThreeVoltageValue: 220.0,
          //     phaseThreeVoltageAngle: 240.0,
          //     phaseOneCurrentValue: 0.1,
          //     phaseOneCurrentAngle: 15.0,
          //     phaseTwoCurrentValue: 1.1,
          //     phaseTwoCurrentAngle: 135.0,
          //     phaseThreeCurrentValue: 1.1,
          //     phaseThreeCurrentAngle: 255.0,
          //   ),
          // ),
          // GoldenTestScenario(
          //   name: 'Current values of all three phases are different.',
          //   child: const PhasorDiagram(
          //     size: 200.0,
          //     phaseOneVoltageValue: 220.0,
          //     phaseOneVoltageAngle: 0.0,
          //     phaseTwoVoltageValue: 220.0,
          //     phaseTwoVoltageAngle: 120.0,
          //     phaseThreeVoltageValue: 220.0,
          //     phaseThreeVoltageAngle: 240.0,
          //     phaseOneCurrentValue: 0.1,
          //     phaseOneCurrentAngle: 15.0,
          //     phaseTwoCurrentValue: 0.5,
          //     phaseTwoCurrentAngle: 135.0,
          //     phaseThreeCurrentValue: 1.1,
          //     phaseThreeCurrentAngle: 255.0,
          //   ),
          // ),
          // GoldenTestScenario(
          //   name: 'All the values are zero.',
          //   child: const PhasorDiagram(
          //     size: 200.0,
          //     phaseOneVoltageValue: 0.0,
          //     phaseOneVoltageAngle: 0.0,
          //     phaseTwoVoltageValue: 0.0,
          //     phaseTwoVoltageAngle: 120.0,
          //     phaseThreeVoltageValue: 0.0,
          //     phaseThreeVoltageAngle: 240.0,
          //     phaseOneCurrentValue: 0.0,
          //     phaseOneCurrentAngle: 15.0,
          //     phaseTwoCurrentValue: 0.0,
          //     phaseTwoCurrentAngle: 135.0,
          //     phaseThreeCurrentValue: 0.0,
          //     phaseThreeCurrentAngle: 255.0,
          //   ),
          // ),
          // GoldenTestScenario(
          //   name: 'All the angles are zero.',
          //   child: const PhasorDiagram(
          //     size: 200.0,
          //     phaseOneVoltageValue: 220.0,
          //     phaseOneVoltageAngle: 0.0,
          //     phaseTwoVoltageValue: 220.0,
          //     phaseTwoVoltageAngle: 0.0,
          //     phaseThreeVoltageValue: 220.0,
          //     phaseThreeVoltageAngle: 0.0,
          //     phaseOneCurrentValue: 1.1,
          //     phaseOneCurrentAngle: 0.0,
          //     phaseTwoCurrentValue: 1.1,
          //     phaseTwoCurrentAngle: 0.0,
          //     phaseThreeCurrentValue: 1.1,
          //     phaseThreeCurrentAngle: 0.0,
          //   ),
          // ),
        ],
      ),
    );
  });
}
