import 'package:flutter/material.dart';
import 'bmi_constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.selectIcon, this.label});

  final IconData selectIcon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          selectIcon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
