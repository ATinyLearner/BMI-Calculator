import 'package:flutter/material.dart';
import './constants.dart';

class CardStyle extends StatelessWidget {
  const CardStyle({this.gender, this.iconName});
  final IconData iconName;
  final gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
