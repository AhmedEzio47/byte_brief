import '../../data/data_sources/hive_data_source.dart';
import 'di.dart';

void injectDataSources() {
  di.registerLazySingleton<HiveDataSource>(() => HiveDataSourceImpl());
}
