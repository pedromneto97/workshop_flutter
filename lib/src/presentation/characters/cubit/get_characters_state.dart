part of 'get_characters_cubit.dart';

abstract class GetCharactersState extends Equatable {
  const GetCharactersState();

  @override
  List<Object> get props => [];
}

class GetCharactersInitial extends GetCharactersState {
  const GetCharactersInitial();
}

class GetCharactersLoading extends GetCharactersState {
  const GetCharactersLoading();
}

class GetCharactersLoaded extends GetCharactersState {
  final Map<House, List<Character>> characters;

  const GetCharactersLoaded(this.characters);

  @override
  List<Object> get props => [characters];
}

class GetCharactersError extends GetCharactersState {
  const GetCharactersError();
}
