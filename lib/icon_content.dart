import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.label, this.icon});
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.0),
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(label, style: kLabelTextStyle)
      ],
    );
  }
}
