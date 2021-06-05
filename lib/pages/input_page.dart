import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/pages/cards/counter_card.dart';
import 'package:bmi_calculator_flutter/pages/cards/spinner_card.dart';
import 'package:flutter/material.dart';

import 'cards/expanded_card.dart';
import 'cards/gender_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              ExpandedCard(
                bgColor: activeCardColor,
                child: GenderCard(gender: Gender.MALE),
              ),
              ExpandedCard(
                bgColor: activeCardColor,
                child: GenderCard(gender: Gender.FEMALE),
              ),
            ],
          )),
          ExpandedCard(
            child: SpinnerCard(),
            bgColor: inactiveCardColor,
          ),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ExpandedCard(
                child: CounterCard(type: CounterType.WEIGHT),
                bgColor: inactiveCardColor,
              ),
              ExpandedCard(
                child: CounterCard(type: CounterType.AGE),
                bgColor: inactiveCardColor,
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
            color: bottomContainerColor,
            child: Text("LOL"),
          )
        ],
      ));
}
