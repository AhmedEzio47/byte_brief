import 'package:byte_brief/core/mappers/model_to_entity_mapper.dart';

import '../../index.dart';

class CategoryModel extends CategoryEntity {
  const CategoryModel({super.id, super.name, super.icon, super.isSelected});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'] as num?,
      name: json['name'] as String?,
      icon: json['icon'] as String?,
      isSelected: json['selected'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'icon': icon, 'selected': isSelected};
  }
}
