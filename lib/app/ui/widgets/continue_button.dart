import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otto_login_page/app/ui/shared/otto_login_colors.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Row(
        children: [
          Text(
            'Continue',
            style: TextStyle(color: OttoColors.white, fontSize: 17),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.arrow_forward,
            color: OttoColors.white,
            size: 20,
          )
        ],
      ),
      onPressed: () {},
    );
  }
}
