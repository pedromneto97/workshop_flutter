import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/ancestry.dart';
import '../../domain/entities/character.dart';
import '../../domain/entities/eye_colour.dart';
import '../../domain/entities/gender.dart';
import '../../domain/entities/hair_colour.dart';
import '../../domain/entities/house.dart';
import '../../domain/entities/specie.dart';
import 'wand_model.dart';

part 'character_model.g.dart';

@JsonSerializable(
  createToJson: false,
)
class CharacterModel {
  final String id;
  final String name;
  final String image;
  final String species;
  final String gender;
  final String house;
  final int? yearOfBirth;
  final bool wizard;
  final String ancestry;
  final String eyeColour;
  final String hairColour;
  final WandModel? wand;
  final String patronus;

  const CharacterModel({
    this.id = '',
    this.name = '',
    this.image = '',
    this.species = '',
    this.gender = '',
    this.house = '',
    this.yearOfBirth,
    this.wizard = false,
    this.ancestry = '',
    this.eyeColour = '',
    this.hairColour = '',
    this.wand,
    this.patronus = '',
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  Character toEntity() => Character(
        id: id,
        name: name,
        image: image,
        specie: _getSpecie(),
        gender: Gender.values.firstWhere((element) => element.name == gender),
        house: _getHouse(),
        yearOfBirth: yearOfBirth,
        wizard: wizard,
        ancestry: Ancestry.values.firstWhere(
          (element) => element.name == ancestry,
          orElse: () => Ancestry.unknown,
        ),
        eyeColour: EyeColour.values.firstWhere(
          (element) => element.name == eyeColour,
          orElse: () => EyeColour.unknown,
        ),
        hairColour: HairColour.values.firstWhere(
          (element) => element.name == hairColour,
          orElse: () => HairColour.unknown,
        ),
      );

  Specie _getSpecie() => {
        'human': Specie.human,
        'half-giant': Specie.halfGiant,
        'werewolf': Specie.werewolf,
        'cat': Specie.cat,
        'goblin': Specie.goblin,
        'owl': Specie.owl,
        'ghost': Specie.ghost,
        'poltergeist': Specie.poltergeist,
        'three-headed dog': Specie.threeHeadedDog,
        'dragon': Specie.dragon,
        'centaur': Specie.centaur,
        'house-elf': Specie.houseElf,
        'acromantula': Specie.acromantula,
        'hippogriff': Specie.hippogriff,
        'giant': Specie.giant,
        'vampire': Specie.vampire,
        'half-human': Specie.halfHuman,
      }[species]!;

  House _getHouse() =>
      {
        'Gryffindor': House.gryffindor,
        'Slytherin': House.slytherin,
        'Ravenclaw': House.ravenclaw,
        'Hufflepuff': House.hufflepuff,
      }[house] ??
      House.unknown;
}
