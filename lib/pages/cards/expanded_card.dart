import 'package:flutter/material.dart';

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
