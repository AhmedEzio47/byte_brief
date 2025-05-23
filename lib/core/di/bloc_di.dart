import 'package:myapp/core/di/di.dart';
import 'package:myapp/presentation/categories/bloc/categories_bloc.dart';

void injectBlocs() {
  di.registerFactory<CategoriesBloc>(
    () => CategoriesBloc(
      getCategoriesUseCase: di(),
      createCategoriesUseCase: di(),
      editCategoriesUseCase: di(),
      deleteCategoriesUseCase: di(),
    ),
  );
}
