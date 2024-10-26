Paints a phasor diagram for a three-phase electrical system.

## Features
In this package, all values are represented as vectors.
* The length of each vector indicates its intensity.
* The direction of each vector, shown by an arrow at the end, represents the angle of the current or voltage.
* Currents are represented in red, while voltages are represented in blue.

<p>
  <img src="https://github.com/Arsenije95/phasor_diagram/blob/5ff5697dad4c6968a245d9a59c98cc070c248eb1/assets/example_1.jpg"
    alt="An animated image of the iOS in-app purchase UI" height="400"/>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://github.com/Arsenije95/phasor_diagram/blob/5ff5697dad4c6968a245d9a59c98cc070c248eb1/assets/example_2.jpg"
   alt="An animated image of the Android in-app purchase UI" height="400"/>
</p>

[//]: # (![Phasor diagram example 1]&#40;https://github.com/Arsenije95/phasor_diagram/blob/5ff5697dad4c6968a245d9a59c98cc070c248eb1/assets/example_1.jpg&#41;)

[//]: # (![Phasor diagram example 1]&#40;https://github.com/Arsenije95/phasor_diagram/blob/5ff5697dad4c6968a245d9a59c98cc070c248eb1/assets/example_2.jpg&#41;)

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

```dart
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
    );
  }
}

```
