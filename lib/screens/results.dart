import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class Results extends StatelessWidget {
  final String bmiResult;
  final Text resultText;
  final String interpretation;

  Results(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Result',
          style: kLargeButtonTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: ReusableCard(
            colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                resultText,
                Center(
                  child: Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                ),
                Text(
                  interpretation,
                  style: kCommentTextStyle,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )),
          BottomButton(
            text: 'RE-CALCULATE',
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
