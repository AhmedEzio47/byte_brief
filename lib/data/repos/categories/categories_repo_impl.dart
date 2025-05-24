import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../data_sources/hive_data_source.dart';
import '../../index.dart';

class CategoriesRepoImpl implements CategoriesRepo {
  const CategoriesRepoImpl({required this.dataSource});

  final HiveDataSource dataSource;

  @override
  Future<Either<Failure, List<CategoryModel>>> getCategories() async {
    final categories = [
      {'id': 1, 'name': 'Video Games'},
      {'id': 2, 'name': 'Technology'},
    ];

    return Right(
      categories.map((e) => CategoryModel.fromJson(e)).toList(),
    );
  }

  @override
  Future<Either<Failure, void>> createCategories() async {
    await dataSource.put(
      'categories',
      CategoryModel(name: 'Video Games').toJson(),
    );
    return Right(null);
  }

  @override
  Future<Either<Failure, CategoryModel>> editCategories() {
    ///TODO: implement
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, CategoryModel>> deleteCategories() {
    ///TODO: implement
    throw UnimplementedError();
  }
}
