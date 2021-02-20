import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RotatedButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Function onPress;

  const RotatedButton({this.text, this.textColor, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 15),
        RotatedBox(
          quarterTurns: -1,
          child: FlatButton(
            onPressed: onPress,
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ),
        ),
      ],
    );
  }
}
