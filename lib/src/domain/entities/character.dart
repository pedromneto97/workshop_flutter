import 'ancestry.dart';
import 'eye_colour.dart';
import 'gender.dart';
import 'hair_colour.dart';
import 'house.dart';
import 'patronus.dart';
import 'specie.dart';
import 'wand.dart';

class Character {
  final String id;
  final String name;
  final String image;
  final Specie specie;
  final Gender gender;
  final House house;
  final int? yearOfBirth;
  final bool wizard;
  final Ancestry ancestry;
  final EyeColour eyeColour;
  final HairColour hairColour;
  final Wand? wand;
  final Patronus? patronus;

  const Character({
    required this.id,
    required this.name,
    required this.image,
    required this.specie,
    required this.gender,
    required this.house,
    required this.yearOfBirth,
    required this.wizard,
    required this.ancestry,
    required this.eyeColour,
    required this.hairColour,
    this.wand,
    this.patronus,
  });
}
