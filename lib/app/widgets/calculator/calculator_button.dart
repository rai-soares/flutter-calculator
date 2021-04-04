import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Function onTap;

  const CalculatorButton(
      {Key key, this.text, this.backgroundColor, this.textColor, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipOval(
        child: Container(
          height: 55,
          width: 55,
          color: backgroundColor,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
