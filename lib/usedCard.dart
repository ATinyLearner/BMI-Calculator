import 'package:flutter/material.dart';

class UsedCard extends StatelessWidget {
  UsedCard({@required this.cardColor, this.cardChild});
  final Color cardColor;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
