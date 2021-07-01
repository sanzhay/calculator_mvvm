import 'package:flutter/material.dart';

import '../models/calculation_data.dart';

CalculationData calculationData = CalculationData();

class CalculatorBrain {
  String getResult() {
    return calculationData.getResult().toString();
  }

  void calculate(String controllerText, String operator) {
    if (calculationData.getOperator() == '') {
      calculationData.setN1(double.parse(controllerText));

      print(calculationData.getResult());
    } else {
      if (calculationData.getOperator() == '-') {
        calculationData.setN2(double.parse(controllerText));
        calculationData
            .setResult(calculationData.getN1() - calculationData.getN2());
        calculationData.setN1(calculationData.getResult());

        //   n2 = double.parse(_controller.text);
        // result = n1 - n2;
        // n1 = result;
      } else if (calculationData.getOperator() == '+') {
        calculationData.setN2(double.parse(controllerText));
        calculationData
            .setResult(calculationData.getN1() + calculationData.getN2());
        calculationData.setN1(calculationData.getResult());
        print(calculationData.getResult());
      } else if (calculationData.getOperator() == '*') {
        calculationData.setN2(double.parse(controllerText));
        calculationData
            .setResult(calculationData.getN1() * calculationData.getN2());
        calculationData.setN1(calculationData.getResult());
      } else if (calculationData.getOperator() == '/') {
        calculationData.setN2(double.parse(controllerText));
        calculationData
            .setResult(calculationData.getN1() / calculationData.getN2());
        calculationData.setN1(calculationData.getResult());
      }
    }
    calculationData.setOperator(operator);
  }
}
