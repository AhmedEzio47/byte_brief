import 'package:myapp/core/di/di.dart';
import 'package:myapp/data/data_sources/hive_data_source.dart';
import 'package:myapp/index.dart';

void injectRepos() {
  di.registerFactory<CategoriesRepo>(
    () => CategoriesRepoImpl(dataSource: di<HiveDataSource>()..init()),
  );
}
