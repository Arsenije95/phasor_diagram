import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

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
}
