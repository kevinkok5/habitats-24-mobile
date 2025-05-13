import 'package:get_it/get_it.dart';
import 'package:habitats_24_mobile/services/authentication_service.dart';
import 'package:habitats_24_mobile/services/dialog_service.dart';
import 'package:habitats_24_mobile/services/navigation.dart';
import 'package:habitats_24_mobile/services/route_service%20copy.dart';
import 'package:habitats_24_mobile/services/toast_service.dart';

GetIt getIt = GetIt.instance;

setupLocator() {
  getIt.registerLazySingleton(() => AuthenticationService());
  getIt.registerLazySingleton(() => DialogService());
  getIt.registerLazySingleton(() => NavigationService());
  getIt.registerLazySingleton(() => RouteService());
  getIt.registerLazySingleton(() => ToastService());
}
