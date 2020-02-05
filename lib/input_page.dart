import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './cardStyle.dart';
import './usedCard.dart';
import './constants.dart';

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
  int height = 180;
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
                      onPress: () {
                        setState(() {
                          selectedGender = GenderType.male;
                        });
                      },
                      cardColor: selectedGender == GenderType.male
                          ? Color(kActiveCardColor)
                          : Color(kInactiveCardColor),
                      cardChild: CardStyle(
                        gender: 'MALE',
                        iconName: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: UsedCard(
                      onPress: () {
                        setState(() {
                          selectedGender = GenderType.female;
                        });
                      },
                      cardChild: CardStyle(
                        gender: 'FEMALE',
                        iconName: FontAwesomeIcons.venus,
                      ),
                      cardColor: selectedGender == GenderType.female
                          ? Color(kActiveCardColor)
                          : Color(kInactiveCardColor),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: UsedCard(
                cardColor: Color(kActiveCardColor),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text('cm'),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15,
                        ),
                        overlayColor: Color(0X29EB1555),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                        thumbColor: Color(0XFFEB1555),
                        activeTrackColor: Color(0XFFFFFFFF),
                        inactiveTrackColor: Color(0xFF8d8e98),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                        min: 120,
                        max: 220,
                        //activeColor: Color(0xFFFFFFFF),
                        //inactiveColor: Color(0xFF8d8e98),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: UsedCard(
                      cardColor: Color(kActiveCardColor),
                    ),
                  ),
                  Expanded(
                    child: UsedCard(
                      cardColor: Color(kActiveCardColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0XFFEB1555),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomContHeight,
            )
          ],
        ),
      ),
    );
  }
}
