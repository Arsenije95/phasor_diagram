Paints a phasor diagram for a three-phase electrical system.

## Features
In this package, all values are represented as vectors.
* The length of each vector indicates its intensity.
* The direction of each vector, shown by an arrow at the end, represents the angle of the current or voltage.
* Currents are represented in red, while voltages are represented in blue.

<p>
  <img src="https://github.com/Arsenije95/phasor_diagram/blob/5ff5697dad4c6968a245d9a59c98cc070c248eb1/assets/example_1.jpg"
    alt="Phasor diagram, image of the first example." height="400"/>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://github.com/Arsenije95/phasor_diagram/blob/5ff5697dad4c6968a245d9a59c98cc070c248eb1/assets/example_2.jpg"
   alt="Phasor diagram, image of the second example." height="400"/>
</p>

## Usage

All the properties are required, size must be larger then or equal to 100.0, and the rest of them 
can't have negative values.

```
PhasorDiagram(
  size: 250.0,
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
)
```
