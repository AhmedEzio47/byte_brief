import 'package:myapp/core/di/di.dart';
import 'package:myapp/domain/use_cases/index.dart';

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
