import 'package:dartz/dartz.dart';
import '../../../index.dart';
import '../../../../core/use_case.dart';
import '../../../../core/failure.dart';

class DeleteCategoriesUseCase implements UseCase<CategoryEntity, NoParams> {
  const DeleteCategoriesUseCase(this.repo);

  final CategoriesRepo repo;

  @override
  Future<Either<Failure, CategoryEntity>> call(NoParams params) {
    return repo.deleteCategories();
  }
}
