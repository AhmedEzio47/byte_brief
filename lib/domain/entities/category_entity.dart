import 'package:objectbox/objectbox.dart';

@Entity()
class CategoryEntity {
  const CategoryEntity({this.id, this.name, this.icon, this.isSelected});

  @Id()
  final num? id;
  
  final String? name;
  final String? icon;
  final bool? isSelected;
}
