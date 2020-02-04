import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './cardStyle.dart';
import './usedCard.dart';

const double bottomContHeight = 80;
const int activeCardColor = 0XFF1D1E33;
const int inactiveCardColor = 0XFF111328;
enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;
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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    child: UsedCard(
                      cardColor: selectedGender == GenderType.male
                          ? Color(activeCardColor)
                          : Color(inactiveCardColor),
                      cardChild: CardStyle(
                        gender: 'MALE',
                        iconName: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: UsedCard(
                    cardChild: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = GenderType.female;
                        });
                      },
                      child: CardStyle(
                        gender: 'FEMALE',
                        iconName: FontAwesomeIcons.venus,
                      ),
                    ),
                    cardColor: selectedGender == GenderType.female
                        ? Color(activeCardColor)
                        : Color(inactiveCardColor),
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
