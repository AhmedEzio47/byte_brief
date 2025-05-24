import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/provider_status.dart';
import '../../../../core/use_case.dart';
import '../../../index.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc({
    required this.getCategoriesUseCase,
    required this.createCategoriesUseCase,
    required this.editCategoriesUseCase,
    required this.deleteCategoriesUseCase,
  }) : super(const CategoriesState()) {
    on<CategorySelectionToggled>(_onCategorySelectionToggled);
    on<GetCategoriesEvent>(_onGet);
    on<CreateCategoriesEvent>(_onCreate);
    on<EditCategoriesEvent>(_onEdit);
    on<DeleteCategoriesEvent>(_onDelete);
  }

  final GetCategoriesUseCase getCategoriesUseCase;
  final CreateCategoriesUseCase createCategoriesUseCase;
  final EditCategoriesUseCase editCategoriesUseCase;
  final DeleteCategoriesUseCase deleteCategoriesUseCase;

  void _onCategorySelectionToggled(
    CategorySelectionToggled event,
    Emitter<CategoriesState> emit,
  ) {
    final categories = state.categories;
    if (categories == null) return;
    try {
      final selected =
          categories.firstWhere((e) => e.id == event.id).isSelected ?? false;
      final index = categories.indexWhere((e) => e.id == event.id);
      categories[index] = categories[index].copyWith(isSelected: !selected);
      emit(state.copyWith(categories: categories));
    } catch (ex) {
      debugPrint('Can\'t find category with id ${event.id}');
    }
  }

  Future<void> _onGet(
    GetCategoriesEvent event,
    Emitter<CategoriesState> emit,
  ) async {
    emit(state.copyWith(status: ProviderStatus.loading));
    final result = await getCategoriesUseCase(NoParams());
    result.fold(
      (failure) => emit(
        state.copyWith(status: ProviderStatus.failure, failure: failure),
      ),
      (categories) => emit(
        state.copyWith(status: ProviderStatus.success, categories: categories),
      ),
    );
  }

  Future<void> _onCreate(
    CreateCategoriesEvent event,
    Emitter<CategoriesState> emit,
  ) async {
    emit(state.copyWith(status: ProviderStatus.loading));
    final result = await createCategoriesUseCase(NoParams());
    result.fold(
      (failure) => emit(
        state.copyWith(status: ProviderStatus.failure, failure: failure),
      ),
      (success) {
        emit(state.copyWith(status: ProviderStatus.success));
        add(GetCategoriesEvent());
      },
    );
  }

  Future<void> _onEdit(
    EditCategoriesEvent event,
    Emitter<CategoriesState> emit,
  ) async {
    emit(state.copyWith(status: ProviderStatus.loading));
    final result = await editCategoriesUseCase(NoParams());
    result.fold(
      (failure) => emit(
        state.copyWith(status: ProviderStatus.failure, failure: failure),
      ),
      (success) => emit(state.copyWith(status: ProviderStatus.success)),
    );
  }

  Future<void> _onDelete(
    DeleteCategoriesEvent event,
    Emitter<CategoriesState> emit,
  ) async {
    emit(state.copyWith(status: ProviderStatus.loading));
    final result = await deleteCategoriesUseCase(NoParams());
    result.fold(
      (failure) => emit(
        state.copyWith(status: ProviderStatus.failure, failure: failure),
      ),
      (success) => emit(state.copyWith(status: ProviderStatus.success)),
    );
  }
}
