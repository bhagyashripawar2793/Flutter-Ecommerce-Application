import 'package:flutter/material.dart';
import '../utils/constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;

  const BottomButton({Key? key, required this.buttonText, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          color: kBottomContainerBackgroundColor,
          height: kBottomContainerHeight,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 10.0),
          child: Center(
            child: Text(buttonText, style: kLabelHeaderStyle),
          ),
        ),
        onTap: onTap);
  }
}