import 'package:injectable/injectable.dart';
import 'package:otto_login_page/app/model/social_item.dart';
import 'package:otto_login_page/app/ui/shared/otto_login_colors.dart';

@lazySingleton
class AuthService {
  List<SocialItem> socialItems = [
    SocialItem(
        text: 'Login With Facebook', slideColor: OttoColors.facebookColor),
    SocialItem(text: 'Login With Twitter', slideColor: OttoColors.twitterColor),
    SocialItem(
        text: 'Login With LinkedIn', slideColor: OttoColors.linkedinColor),
    SocialItem(text: 'Login With Instagram', slideColor: OttoColors.instaColor)
  ];

  int _currentIndex = 0;
  get currentIndex => _currentIndex;
  set currentIndex(int index) => _currentIndex = index;

  dynamic onChangeHandler(int index) {
    _currentIndex = index;
  }

  List<T> mapForIndicators<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
}
