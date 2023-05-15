import 'package:data/networking/service_manager.dart';
import 'package:domain/repositories/log_service.dart';
import 'package:get_it/get_it.dart';
import 'package:data/mapper/sample_data_mapper.dart';
import 'package:domain/repositories/sample_repository.dart';
import 'package:data/repositories/sample_repository_impl.dart';

class DataMapperInjector {
  SampleDataMapper get sampleDataMapper => SampleDataMapper();
}

class DataSourceInjector {
  final LogService logService;
  DataSourceInjector(this.logService);

  ServiceManager get serviceManager => ServiceManager(logService);
}

void _registerRepositories(GetIt getIt, DataSourceInjector dataSourceInjector,
    DataMapperInjector dataMapperInjector) {
  getIt.registerLazySingleton<SampleRepository>(() => SampleRepositoryImpl(
        dataSourceInjector.serviceManager,
        dataMapperInjector.sampleDataMapper,
      ));
}

GetIt $setUpDataInjector(GetIt getIt) {
  //DataSourceInjector
  getIt.registerLazySingleton<DataSourceInjector>(
    () => DataSourceInjector(getIt<LogService>()),
  );

  //DataMapperInjector
  getIt.registerLazySingleton<DataMapperInjector>(
    () => DataMapperInjector(),
  );

  //Register repositories
  _registerRepositories(
    getIt,
    getIt<DataSourceInjector>(),
    getIt<DataMapperInjector>(),
  );

  return getIt;
}
