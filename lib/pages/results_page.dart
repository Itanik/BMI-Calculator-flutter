import 'package:bmi_calculator_flutter/components/expanded_card.dart';
import 'package:bmi_calculator_flutter/components/large_button.dart';
import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final double result = 22.1;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
            child: Text(
              "Your Result",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36.0,
              ),
            ),
          ),
          ExpandedCard(
              bgColor: kActiveCardColor,
              margin: EdgeInsets.fromLTRB(30.0, 0, 30.0, 30.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "NORMAL",
                      style: kMainTextStyle.copyWith(
                        color: Colors.greenAccent.shade400,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      result.toString(),
                      style: TextStyle(
                        fontSize: 90.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Normal BMI range:",
                          style: kMainTextStyle.copyWith(
                            color: kLabelTextColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "18.5 - 25 kg/m2",
                          style: kMainTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Text(
                      result >= 18.5 && result <= 25.0
                          ? "You have a normal body weight. Good job!"
                          : "Bad news",
                      style: kMainTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    RawMaterialButton(
                        fillColor: kInactiveCardColor,
                        constraints: BoxConstraints.expand(height: 60.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                        onPressed: () {},
                        child: Text(
                          "SAVE RESULT",
                          style: kMainTextStyle.copyWith(
                              fontSize: 16.0, letterSpacing: 2),
                        )),
                  ],
                ),
              )),
          LargeButton(
              text: "RE-CALCULATE YOUR BMI",
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ));
}
