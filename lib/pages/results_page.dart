import 'package:bmi_calculator_flutter/components/expanded_card.dart';
import 'package:bmi_calculator_flutter/components/large_button.dart';
import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Text("Your Result"),
          ExpandedCard(
              bgColor: kInactiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Normal"),
                  Text("22.1"),
                  Text("Normal BMI range: \n 18.5 - 25 kg/m2"),
                  Text("You have a normal body weight. Good job!"),
                  TextButton(onPressed: () {}, child: Text("Save result")),
                ],
              )),
          LargeButton(text: "RE-CALCULATE YOUR BMI", onPressed: () {
            Navigator.pop(context);
          })
        ],
      ));
}
