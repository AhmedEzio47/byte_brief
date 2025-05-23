import 'package:get_it/get_it.dart';
import 'package:myapp/core/di/bloc_di.dart';
import 'package:myapp/core/di/data_sources_di.dart';
import 'package:myapp/core/di/repos_di.dart';
import 'package:myapp/core/di/use_cases.dart';

final di = GetIt.instance;

void injectDependencies() {
  injectDataSources();
  injectRepos();
  injectUseCases();
  injectBlocs();
}
