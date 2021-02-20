import 'package:flutter/cupertino.dart';
import 'package:otto_login_page/app/ui/shared/otto_login_colors.dart';

class CarouselIndicator extends StatelessWidget {
  final int currentIndex;
  final int index;

  const CarouselIndicator({this.currentIndex, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 7,
      height: 7,
      margin: EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:
              currentIndex == index ? OttoColors.white : OttoColors.lightGrey),
    );
  }
}
