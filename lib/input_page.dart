import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const Color activeCardColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: ReusableCard(
                      activeCardColor,
                      IconContent(
                        label: 'Male',
                        icon: FontAwesomeIcons.mars,
                      ))),
              Expanded(
                  child: ReusableCard(
                      activeCardColor,
                      IconContent(
                        label: 'Female',
                        icon: FontAwesomeIcons.venus,
                      )))
            ],
          ),
        ),
        Expanded(child: ReusableCard(activeCardColor)),
        Expanded(
          child: Row(
            children: [
              Expanded(child: ReusableCard(activeCardColor)),
              Expanded(child: ReusableCard(activeCardColor)),
            ],
          ),
        ),
        Container(
          color: bottomContainerColor,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: 80.0,
        )
      ]),
    );
  }
}
