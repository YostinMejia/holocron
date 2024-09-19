part of 'character_bloc.dart';

@immutable
sealed class CharactersEvent {}

final class CharacterFetched extends CharactersEvent{}