import '../../presentation/categories/bloc/categories_bloc.dart';
import 'di.dart';

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
