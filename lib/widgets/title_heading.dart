import 'package:flutter/material.dart';
import 'package:travelkuy/constants/style_constant.dart';

class TitleHeading extends StatelessWidget {
  const TitleHeading({
    Key? key,
    required this.title,
    required this.bottom,
    required this.top,
  }) : super(key: key);
  final String title;
  final double bottom, top;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, bottom: bottom, top: top),
      child: Text(
        title,
        style: mTitleStyle,
      ),
    );
  }
}
