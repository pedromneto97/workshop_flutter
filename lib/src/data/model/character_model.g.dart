// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) =>
    CharacterModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      species: json['species'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      house: json['house'] as String? ?? '',
      yearOfBirth: json['yearOfBirth'] as int?,
      wizard: json['wizard'] as bool? ?? false,
      ancestry: json['ancestry'] as String? ?? '',
      eyeColour: json['eyeColour'] as String? ?? '',
      hairColour: json['hairColour'] as String? ?? '',
      wand: json['wand'] == null
          ? null
          : WandModel.fromJson(json['wand'] as Map<String, dynamic>),
      patronus: json['patronus'] as String? ?? '',
    );
