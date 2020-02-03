import 'package:flutter/material.dart';

const double bottomContHeight = 80;
const int activeCardColor = 0XFF1D1E33;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: UsedCard(
                    cardColor: Color(activeCardColor),
                  ),
                ),
                Expanded(
                  child: UsedCard(
                    cardColor: Color(activeCardColor),
                  ),
                )
              ],
            )),
            Expanded(
              child: UsedCard(
                cardColor: Color(activeCardColor),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: UsedCard(
                      cardColor: Color(activeCardColor),
                    ),
                  ),
                  Expanded(
                    child: UsedCard(
                      cardColor: Color(activeCardColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0XFFEB1555),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContHeight,
            )
          ],
        ),
      ),
    );
  }
}

class UsedCard extends StatelessWidget {
  UsedCard({@required this.cardColor});
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
