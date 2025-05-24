import 'package:byte_brief/core/mappers/entity_to_model_mapper.dart';
import 'package:byte_brief/data/index.dart';

@Entity()
class CategoryEntity {
  const CategoryEntity({this.id, this.name, this.icon, this.isSelected});

  @Id()
  final num? id;
  
  final String? name;
  final String? icon;
  final bool? isSelected;
}
