import 'package:dio/dio.dart';

import '../domain/data/api_provider.dart';
import '../domain/entities/character.dart';
import '../domain/entities/spell.dart';
import 'model/character_model.dart';
import 'model/spell_model.dart';

class ApiProviderImpl implements ApiProvider {
  final Dio _client;

  const ApiProviderImpl(this._client);

  @override
  Future<List<Spell>> getSpells() async {
    final response = await _client.get<List<dynamic>>('/spells');

    final spells = <Spell>[];

    for (final Map<String, dynamic> spell in response.data!) {
      spells.add(
        SpellModel.fromJson(spell).toEntity(),
      );
    }

    return spells;
  }

  @override
  Future<List<Character>> getCharacters() async {
    final response = await _client.get<List<dynamic>>('/characters');

    final characters = <Character>[];

    for (final Map<String, dynamic> character in response.data!) {
      characters.add(
        CharacterModel.fromJson(character).toEntity(),
      );
    }

    return characters;
  }
}
