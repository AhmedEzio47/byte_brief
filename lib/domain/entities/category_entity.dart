import 'package:byte_brief/core/mappers/entity_to_model_mapper.dart';
import 'package:byte_brief/data/index.dart';

class CategoryEntity implements EntityToModelMapper<CategoryModel> {
  const CategoryEntity({this.id, this.name, this.icon, this.isSelected});

  final num? id;

  final String? name;
  final String? icon;
  final bool? isSelected;

  CategoryEntity copyWith({bool? isSelected}) => CategoryEntity(
        isSelected: isSelected,
      );

  @override
  CategoryModel toModel() =>
      CategoryModel(id: id, name: name, icon: icon, isSelected: isSelected);
}
