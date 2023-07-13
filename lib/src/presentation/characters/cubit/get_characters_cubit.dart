import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/data/api_provider.dart';
import '../../../domain/entities/character.dart';
import '../../../domain/entities/house.dart';

part 'get_characters_state.dart';

class GetCharactersCubit extends Cubit<GetCharactersState> {
  final ApiProvider _provider;

  GetCharactersCubit(this._provider) : super(const GetCharactersInitial());

  Future<void> getCharacters() async {
    emit(const GetCharactersLoading());
    try {
      final charactersList = await _provider.getCharacters();
      final characters = <House, List<Character>>{};

      for (final character in charactersList) {
        if (characters.containsKey(character.house)) {
          characters[character.house]!.add(character);
        } else {
          characters[character.house] = [character];
        }
      }

      emit(
        GetCharactersLoaded(characters),
      );
    } catch (exception, stackTrace) {
      emit(const GetCharactersError());
    }
  }
}
