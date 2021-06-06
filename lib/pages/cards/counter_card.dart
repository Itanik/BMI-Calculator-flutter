import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

const _kIconButtonColor = Color(0xAF4C4F5E);

enum CounterType { WEIGHT, AGE }

class CounterCard extends StatefulWidget {
  final CounterType type;
  final Function onChanged;

  CounterCard({required this.type, required this.onChanged});

  @override
  _CounterCardState createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int counterValue = 0;

  @override
  void initState() {
    counterValue = widget.type == CounterType.WEIGHT ? 74 : 19;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    widget.onChanged(counterValue);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.type == CounterType.WEIGHT ? "WEIGHT" : "AGE",
          style: kLabelTextStyle,
        ),
        Text(
          counterValue.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
                iconData: Icons.remove,
                onPressed: () {
                  if (counterValue > 0)
                    setState(() {
                      counterValue--;
                    });
                }),
            SizedBox(width: 10.0),
            RoundIconButton(
                iconData: Icons.add,
                onPressed: () {
                  setState(() {
                    counterValue++;
                  });
                })
          ],
        )
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData iconData;

  const RoundIconButton({required this.iconData, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: _kIconButtonColor,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 50.0, height: 50.0),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
