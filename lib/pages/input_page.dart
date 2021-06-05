import 'package:bmi_calculator_flutter/pages/cards/counter_card.dart';
import 'package:bmi_calculator_flutter/pages/cards/spinner_card.dart';
import 'package:flutter/material.dart';

import 'cards/expanded_card.dart';
import 'cards/gender_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111428);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

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
                      ? activeCardColor
                      : inactiveCardColor,
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
                      ? activeCardColor
                      : inactiveCardColor,
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
              alignment: Alignment.center,
              child: Text("Calculate from BMI"),
            )
          ],
        ));
  }
}
