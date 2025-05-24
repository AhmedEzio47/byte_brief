import '../../data/data_sources/hive_data_source.dart';
import '../../data/repos/categories/categories_repo.dart';
import '../../data/repos/categories/categories_repo_impl.dart';
import 'di.dart';

void injectRepos() {
  di.registerFactory<CategoriesRepo>(
    () => CategoriesRepoImpl(dataSource: di<HiveDataSource>()..init()),
  );
}
