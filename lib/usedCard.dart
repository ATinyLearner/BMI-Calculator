import 'package:flutter/material.dart';

class UsedCard extends StatelessWidget {
  UsedCard({@required this.cardColor, this.cardChild, this.onPress});
  final Color cardColor;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
