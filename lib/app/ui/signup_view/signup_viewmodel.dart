import 'package:otto_login_page/app/config/locator.dart';
import 'package:otto_login_page/app/config/router.gr.dart';
import 'package:otto_login_page/app/service/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUpViewModel extends BaseViewModel {
  final _navigation = locator<NavigationService>();
  final _authService = locator<AuthService>();

  get socialItems => _authService.socialItems;
  get currentIndex => _authService.currentIndex;

  dynamic onChangeHandler(int index, dynamic reason) {
    _authService.onChangeHandler(index);
    notifyListeners();
  }

  void onLogInPressHandler() {
    _navigation.navigateTo(Routes.loginView);
  }

  List<T> mapForIndicators<T>(List list, Function handler) {
    return _authService.mapForIndicators(list, handler);
  }
}
