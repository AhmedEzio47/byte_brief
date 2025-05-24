import 'package:byte_brief/core/di/repos_di.dart';
import 'package:byte_brief/core/di/services_di.dart';
import 'package:byte_brief/core/di/use_cases.dart';
import 'package:get_it/get_it.dart';

import 'bloc_di.dart';
import 'data_sources_di.dart';

final di = GetIt.instance;

void injectDependencies() {
  injectServices();
  injectDataSources();
  injectRepos();
  injectUseCases();
  injectBlocs();
}
