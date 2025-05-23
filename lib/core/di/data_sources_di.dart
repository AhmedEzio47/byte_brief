import 'package:myapp/core/di/di.dart';
import 'package:myapp/data/data_sources/hive_data_source.dart';

void injectDataSources() {
  di.registerLazySingleton<HiveDataSource>(() => HiveDataSourceImpl());
}
