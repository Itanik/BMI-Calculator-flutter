import 'package:bmi_calculator_flutter/pages/input_page';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  final Color bgColor = Color(0xff0A0D22);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: bgColor,
          scaffoldBackgroundColor: bgColor,
        ),
        home: InputPage(),
      );
}
