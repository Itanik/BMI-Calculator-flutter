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
                bgColor: maleCardColor,
                child: GestureDetector(
                  // for transparent child such as Container we must provide
                  // special behavior property. otherwise touch won't be detected
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    setState(() {
                      maleCardColor = activeCardColor;
                      femaleCardColor = inactiveCardColor;
                    });
                  },
                  child: GenderCard(gender: Gender.MALE),
                ),
              ),
              ExpandedCard(
                bgColor: femaleCardColor,
                child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      setState(() {
                        maleCardColor = inactiveCardColor;
                        femaleCardColor = activeCardColor;
                      });
                    },
                    child: GenderCard(gender: Gender.FEMALE)),
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
