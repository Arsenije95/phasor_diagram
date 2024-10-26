import 'package:flutter/material.dart';

import 'package:phasor_diagram/phasor_diagram.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          'Phasor diagram',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: PhasorDiagram(
          size: MediaQuery.of(context).size.width * 0.8,
          phaseOneVoltageValue: 220.0,
          phaseOneVoltageAngle: 0.0,
          phaseTwoVoltageValue: 220.0,
          phaseTwoVoltageAngle: 60.0,
          phaseThreeVoltageValue: 220.0,
          phaseThreeVoltageAngle: 300.0,
          phaseOneCurrentValue: 1.1,
          phaseOneCurrentAngle: 180.0,
          phaseTwoCurrentValue: 1.1,
          phaseTwoCurrentAngle: 120.0,
          phaseThreeCurrentValue: 1.1,
          phaseThreeCurrentAngle: 240.0,
        ),
      ),
    );
  }
}
