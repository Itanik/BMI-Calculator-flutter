import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const genderIconSize = 80.0;

enum Gender { MALE, FEMALE }

class GenderCard extends StatelessWidget {
  final Gender gender;

  GenderCard({required this.gender});

  @override
  Widget build(BuildContext context) {
    final IconData genderIcon;
    final String genderText;
    if (gender == Gender.MALE) {
      genderIcon = FontAwesomeIcons.mars;
      genderText = "MALE";
    } else {
      genderIcon = FontAwesomeIcons.venus;
      genderText = "FEMALE";
    }
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: genderIconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Center(
          child: Text(
            genderText,
            style: TextStyle(fontSize: 18.0, color: mainTextColor),
          ),
        )
      ],
    );
  }
}
