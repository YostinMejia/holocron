part of 'character_bloc.dart';

@immutable
sealed class CharactersState {}

final class CharactersInitial extends CharactersState {
  final List<CharacterModel> characters =[];
}

final class CharactersLoading extends CharactersState{}

final class CharactersLoaded extends CharactersState{
  final List<CharacterModel> characters;
  CharactersLoaded({required this.characters});
}

final class CharactersError extends CharactersState{
  final String errorMessage;
  CharactersError(this.errorMessage);
}