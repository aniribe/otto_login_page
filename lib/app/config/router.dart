import 'package:auto_route/auto_route_annotations.dart';
import 'package:otto_login_page/app/ui/login_view/login_view.dart';
import 'package:otto_login_page/app/ui/signup_view/signup_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: LoginView, initial: true),
    MaterialRoute(page: SignUpView),
  ],
)
class $Router {}
