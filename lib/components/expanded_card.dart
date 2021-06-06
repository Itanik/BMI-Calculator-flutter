import 'package:flutter/material.dart';

class ExpandedCard extends StatelessWidget {
  final Color bgColor;
  final Widget child;
  final int? flex;
  final EdgeInsetsGeometry? margin;

  ExpandedCard(
      {required this.bgColor, required this.child, this.margin, this.flex});

  @override
  Widget build(BuildContext context) => Expanded(
        flex: flex ?? 1,
        child: Container(
          child: child,
          margin: margin ?? EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      );
}
