import 'package:flutter/material.dart';
import 'package:otto_login_page/app/ui/shared/otto_login_colors.dart';
import 'package:stacked_services/stacked_services.dart';
import 'app/config/locator.dart';
import 'app/config/router.gr.dart';

Future<void> main() async {
//  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          canvasColor: Colors.transparent,
          primaryColor: OttoColors.primaryGrey,
          backgroundColor: OttoColors.primaryGrey),
      initialRoute: Routes.loginView,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
