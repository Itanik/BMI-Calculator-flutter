import 'package:bmi_calculator_flutter/components/large_button.dart';
import 'package:bmi_calculator_flutter/pages/cards/counter_card.dart';
import 'package:bmi_calculator_flutter/pages/cards/slider_card.dart';
import 'package:flutter/material.dart';

import '../components/expanded_card.dart';
import '../constants.dart';
import 'cards/gender_card.dart';
import 'results_page.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;

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
                      ? kActiveCardColor
                      : kInactiveCardColor,
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
                      ? kActiveCardColor
                      : kInactiveCardColor,
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
              child: SliderCard(),
              bgColor: kInactiveCardColor,
            ),
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ExpandedCard(
                  child: CounterCard(type: CounterType.WEIGHT),
                  bgColor: kInactiveCardColor,
                ),
                ExpandedCard(
                  child: CounterCard(type: CounterType.AGE),
                  bgColor: kInactiveCardColor,
                ),
              ],
            )),
            LargeButton(
                text: "CALCULATE FROM BMI",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => ResultsPage()));
                })
          ],
        ));
  }
}
