import '../../domain/entities/spell.dart';

class SpellModel {
  final String id;
  final String name;
  final String description;

  const SpellModel({
    this.id = '',
    this.name = '',
    this.description = '',
  });

  factory SpellModel.fromJson(Map<String, dynamic> json) => SpellModel(
        id: json['id'] as String,
        name: json['name'] as String,
        description: json['description'] as String,
      );

  Spell toEntity() => Spell(
        id: id,
        name: name,
        description: description,
      );
}
