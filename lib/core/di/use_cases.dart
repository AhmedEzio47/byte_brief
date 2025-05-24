import '../../domain/use_cases/categories/create_categories_use_case.dart';
import '../../domain/use_cases/categories/delete_categories_use_case.dart';
import '../../domain/use_cases/categories/edit_categories_use_case.dart';
import '../../domain/use_cases/categories/get_categories_use_case.dart';
import 'di.dart';

void injectUseCases() {
  di.registerFactory<GetCategoriesUseCase>(() => GetCategoriesUseCase(di()));
  di.registerFactory<CreateCategoriesUseCase>(
    () => CreateCategoriesUseCase(di()),
  );
  di.registerFactory<EditCategoriesUseCase>(() => EditCategoriesUseCase(di()));
  di.registerFactory<DeleteCategoriesUseCase>(
    () => DeleteCategoriesUseCase(di()),
  );
}
