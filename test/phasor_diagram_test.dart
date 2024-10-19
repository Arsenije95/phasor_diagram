import 'package:flutter_test/flutter_test.dart';

import 'package:phasor_diagram/phasor_diagram.dart';

void main() {
  testWidgets('Checking if PhasorDiagram gets rendered', (tester) async {
    await tester.pumpWidget(const PhasorDiagram(
      size: 100.0,
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
    ));

    final phasorDiagramWidget = find.byType(PhasorDiagram);

    expect(phasorDiagramWidget, findsOneWidget);
  });

  testWidgets('Checking if PhasorDiagram gets rendered when size is zero',
      (tester) async {
    await tester.pumpWidget(const PhasorDiagram(
      size: 0.0,
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
    ));

    final phasorDiagramWidget = find.byType(PhasorDiagram);

    expect(phasorDiagramWidget, findsOneWidget);
  });

  testWidgets(
      'Checking if PhasorDiagram gets rendered when every value is zero',
      (tester) async {
    await tester.pumpWidget(const PhasorDiagram(
      size: 0.0,
      phaseOneVoltageValue: 0.0,
      phaseOneVoltageAngle: 0.0,
      phaseTwoVoltageValue: 0.0,
      phaseTwoVoltageAngle: 0.0,
      phaseThreeVoltageValue: 0.0,
      phaseThreeVoltageAngle: 0.0,
      phaseOneCurrentValue: 0.0,
      phaseOneCurrentAngle: 0.0,
      phaseTwoCurrentValue: 0.0,
      phaseTwoCurrentAngle: 0.0,
      phaseThreeCurrentValue: 0.0,
      phaseThreeCurrentAngle: 0.0,
    ));

    final phasorDiagramWidget = find.byType(PhasorDiagram);

    expect(phasorDiagramWidget, findsOneWidget);
  });
}
