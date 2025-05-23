import 'package:dartz/dartz.dart';
import '../../index.dart';
import '../../../../core/failure.dart';

abstract interface class CategoriesRepo {
  Future<Either<Failure, List<CategoryModel>>> getCategories();

  Future<Either<Failure, void>> createCategories();

  Future<Either<Failure, CategoryModel>> editCategories();

  Future<Either<Failure, CategoryModel>> deleteCategories();
}
