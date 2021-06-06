import 'dart:math';

class BMIResult {
  late final double _bmi;

  BMIResult(int height, int weight) {
    _bmi = _calculate(height, weight);
  }

  String get value => _bmi.toStringAsFixed(1);

  BMI get result {
    if (_bmi >= 25) {
      return BMI.Overweight;
    } else if (_bmi > 18.5) {
      return BMI.Normal;
    } else {
      return BMI.Underweight;
    }
  }

  String get interpretation {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  double _calculate(int height, int weight) => weight / pow(height / 100, 2);
}

enum BMI { Overweight, Normal, Underweight }
