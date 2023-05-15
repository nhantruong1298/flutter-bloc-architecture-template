import 'package:domain/repositories/log_service.dart';
import 'package:get_it/get_it.dart' ;
import 'package:data/repositories/log_service_impl.dart';
import 'package:presentation/injector/data_injector.dart' as dataInjector;

GetIt $initGetIt(GetIt getIt) {
 
  getIt.registerLazySingleton<LogService>(() => LogServiceImpl());

  dataInjector.$setUpDataInjector(getIt);
  return getIt;
}
