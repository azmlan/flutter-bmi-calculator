import 'package:flutter/material.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {
  final IconData cardIcon;
  final String cardText;

  CardContent(this.cardIcon, this.cardText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.cardIcon,
          size: 60,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          this.cardText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
