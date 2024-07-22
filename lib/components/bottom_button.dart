import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  BottomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
            child: Text(
          text,
          style: kLargeButtonTextStyle,
        )),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
      ),
    );
  }
}
