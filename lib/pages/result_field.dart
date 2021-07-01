import 'package:flutter/material.dart';
import '../viewmodel/calculator_brain.dart';

class ResultField extends StatelessWidget {
  CalculatorBrain calculatorBrain = CalculatorBrain();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Text(
          calculatorBrain.getResult(),
          // result.toString(),
          style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.end,
        ),
        width: double.infinity,
      ),
    );
  }
}
