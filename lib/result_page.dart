import 'dart:math';

import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String textResult;
  final String interpretation;

  ResultPage(this.bmiResult, this.textResult, this.interpretation);
  // ResultPage(
  //     {required this.bmiResult,
  //     required this.textResult,
  //     required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text(
                    "Your Result",
                    style: kHeaderText,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20.0),
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(textResult.toUpperCase(), style: kGreenLabelText),
                      Text(
                        bmiResult,
                        style: kHeaderText,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 1),
                        child: Text(
                          interpretation,
                          style: kMidTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReusableCard(
                            cardChild: Container(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 30, horizontal: 90),
                                    backgroundColor: kInactiveCardColor),
                                child: Text("Save Results"),
                                onPressed: () {
                                  print("Save Results");
                                },
                              ),
                            ),
                            colour: Colors.pink,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Center(
                child: Text(
                  "Re-Calculate",
                  style: kLargeButtonTextStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
