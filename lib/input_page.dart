import 'package:flutter/material.dart';

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
              Expanded(child: ReusableCard(activeCardColor)),
              Expanded(child: ReusableCard(activeCardColor)),
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

class ReusableCard extends StatelessWidget {
  ReusableCard(this.colour, [this.cardChild]);

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
