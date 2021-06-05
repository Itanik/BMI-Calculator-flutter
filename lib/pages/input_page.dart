import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

import 'cards/GenderCard.dart';

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
            child: buildHeightSpinner(),
            bgColor: inactiveCardColor,
          ),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ExpandedCard(
                child: buildCounterCard("Weight"),
                bgColor: inactiveCardColor,
              ),
              ExpandedCard(
                child: buildCounterCard("Age"),
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

  Widget buildHeightSpinner() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Height"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("183"),
              Text("cm"),
            ],
          ),
          Text("spinner"),
        ],
      );

  Widget buildCounterCard(String text) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          Text("73"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.remove),
              Icon(Icons.add),
            ],
          )
        ],
      );
}

class ExpandedCard extends StatelessWidget {
  final Color bgColor;
  final Widget child;

  ExpandedCard({required this.bgColor, required this.child});

  @override
  Widget build(BuildContext context) => Expanded(
        child: Container(
          child: child,
          margin: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
        ),
      );
}
