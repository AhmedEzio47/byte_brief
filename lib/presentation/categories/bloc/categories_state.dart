import '../../../../core/failure.dart';
import '../../../../core/provider_status.dart';
import '../../../../core/base_state.dart';
import '../../../index.dart';

final class CategoriesState extends BaseState {
  const CategoriesState({
    super.status = ProviderStatus.initial,
    super.failure,
    this.categories,
  });

  final List<CategoryEntity>? categories;

  CategoriesState copyWith({
    ProviderStatus? status,
    Failure? failure,
    List<CategoryEntity>? categories,
  }) => CategoriesState(
    status: status ?? this.status,
    failure: failure ?? this.failure,
    categories: categories ?? this.categories,
  );
}
