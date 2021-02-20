import 'package:flutter/cupertino.dart';
import 'package:otto_login_page/app/ui/shared/otto_login_colors.dart';

class WelcomeText extends StatelessWidget {
  final String text;

  const WelcomeText({this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 30),
        Text(
          text,
          style: TextStyle(color: OttoColors.white, fontSize: 17),
        ),
      ],
    );
  }
}
