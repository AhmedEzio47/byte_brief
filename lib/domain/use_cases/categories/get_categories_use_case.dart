import 'package:dartz/dartz.dart';
import '../../../index.dart';
import '../../../../core/use_case.dart';
import '../../../../core/failure.dart';

class GetCategoriesUseCase implements UseCase<List<CategoryEntity>, NoParams> {
  const GetCategoriesUseCase(this.repo);

  final CategoriesRepo repo;

  @override
  Future<Either<Failure, List<CategoryEntity>>> call(NoParams params) {
    return repo.getCategories();
  }
}
