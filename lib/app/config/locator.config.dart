// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import '../service/auth_service.dart';
import 'service_config.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final servicesConfig = _$ServicesConfig();
  gh.lazySingleton<AuthService>(() => AuthService());
  gh.lazySingleton<DialogService>(() => servicesConfig.dialogService);
  gh.lazySingleton<NavigationService>(() => servicesConfig.navigationService);
  return get;
}

class _$ServicesConfig extends ServicesConfig {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
}
