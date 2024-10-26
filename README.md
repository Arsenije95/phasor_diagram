Paints a phasor diagram for a three-phase electrical system.

## Visual Representation
In the Phasor Diagram, both current and voltage are represented as vectors. 
Each vector is depicted as a line with an arrow at one end.

* The length of the vector represents its intensity.
* The angle of the vector indicates its direction relative to an imaginary x-axis.
* Voltage vectors are represented in blue, while current vectors are represented in red.

<p>
  <img src="https://github.com/Arsenije95/phasor_diagram/blob/5ff5697dad4c6968a245d9a59c98cc070c248eb1/assets/example_1.jpg"
    alt="Phasor diagram, image of the first example." height="400"/>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://github.com/Arsenije95/phasor_diagram/blob/5ff5697dad4c6968a245d9a59c98cc070c248eb1/assets/example_2.jpg"
   alt="Phasor diagram, image of the second example." height="400"/>
</p>

## Usage

All properties are required. The size must be greater than or equal to 100.0, and the rest of the 
properties cannot have negative values.

```dart
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
