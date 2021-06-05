import 'package:bmi_calculator_flutter/pages/cards/counter_card.dart';
import 'package:bmi_calculator_flutter/pages/cards/spinner_card.dart';
import 'package:flutter/material.dart';

import 'cards/expanded_card.dart';
import 'cards/gender_card.dart';

const _kActiveCardColor = Color(0xFF1D1E33);
const _kInactiveCardColor = Color(0xFF111428);
const _kBottomContainerColor = Color(0xFFEB1555);
const _kBottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = _kInactiveCardColor;
  Color femaleCardColor = _kInactiveCardColor;

  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    // updateGenderCardsColor();
    return Scaffold(
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
                  bgColor: selectedGender == Gender.MALE
                      ? _kActiveCardColor
                      : _kInactiveCardColor,
                  child: GenderCard(
                    gender: Gender.MALE,
                    onCardClick: () {
                      setState(() {
                        selectedGender = Gender.MALE;
                      });
                    },
                  ),
                ),
                ExpandedCard(
                  bgColor: selectedGender == Gender.FEMALE
                      ? _kActiveCardColor
                      : _kInactiveCardColor,
                  child: GenderCard(
                    gender: Gender.FEMALE,
                    onCardClick: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                  ),
                ),
              ],
            )),
            ExpandedCard(
              child: SpinnerCard(),
              bgColor: _kInactiveCardColor,
            ),
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ExpandedCard(
                  child: CounterCard(type: CounterType.WEIGHT),
                  bgColor: _kInactiveCardColor,
                ),
                ExpandedCard(
                  child: CounterCard(type: CounterType.AGE),
                  bgColor: _kInactiveCardColor,
                ),
              ],
            )),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              height: _kBottomContainerHeight,
              color: _kBottomContainerColor,
              alignment: Alignment.center,
              child: Text("Calculate from BMI"),
            )
          ],
        ));
  }
}
