import 'package:dartz/dartz.dart';
import '../../../index.dart';
import '../../../../core/use_case.dart';
import '../../../../core/failure.dart';

class CreateCategoriesUseCase implements UseCase<void, NoParams> {
  const CreateCategoriesUseCase(this.repo);

  final CategoriesRepo repo;

  @override
  Future<Either<Failure, void>> call(NoParams params) {
    return repo.createCategories();
  }
}
