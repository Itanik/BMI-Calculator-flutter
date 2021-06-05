import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111428);
const bottomContainerColor = Color(0xFFEB1555);

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
              ),
              ExpandedCard(
                bgColor: activeCardColor,
              ),
            ],
          )),
          ExpandedCard(
            bgColor: inactiveCardColor,
          ),
          Expanded(
              child: Row(
            children: [
              ExpandedCard(
                bgColor: inactiveCardColor,
              ),
              ExpandedCard(
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

class ExpandedCard extends StatelessWidget {
  final Color bgColor;

  ExpandedCard({required this.bgColor});

  @override
  Widget build(BuildContext context) => Expanded(
        child: Container(
          margin: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
        ),
      );
}
