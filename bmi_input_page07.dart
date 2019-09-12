import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmi_resuable_card01.dart';
import 'bmi_icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1C2033);
const inActiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEA1555);

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;

  GenderType selectGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectGender = GenderType.male;
                      });
                    },
                    cardChild: IconContent(
                      selectIcon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    colour: selectGender == GenderType.male
                        ? activeCardColor
                        : inActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectGender = GenderType.female;
                      });
                    },
                    cardChild: IconContent(
                      selectIcon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    colour: selectGender == GenderType.female
                        ? activeCardColor
                        : inActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
