import '../entities/character.dart';
import '../entities/spell.dart';

abstract class ApiProvider {
  const ApiProvider();

  Future<List<Character>> getCharacters();

  Future<List<Spell>> getSpells();
}
