import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBrains {
  final int height;
  final int weight;
  double? _bmi;

  CalculatorBrains({required this.height, required this.weight});

  String calculate_bmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  Text getResult() {
    if (_bmi! >= 25) {
      return Text(
        'Overweight',
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: 22.0,
        ),
      );
    } else if (_bmi! > 18.5) {
      return Text(
        'Normal',
        style: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: 22.0,
        ),
      );
    } else {
      return Text(
        'Underweight',
        style: TextStyle(
            color: Colors.orangeAccent,
            fontWeight: FontWeight.bold,
            fontSize: 22.0),
      );
      ;
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'Your BMI is above normal levels. You should exercise more!';
    } else if (_bmi! > 18.5) {
      return 'Your BMI is normal. Good Job!';
    } else {
      return 'Your BMI is below normal levels. You should eat more!';
    }
  }
}
