import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:star_wars/data/models/character_model.dart';
import 'package:star_wars/data/repositories/character_repository.dart';

part 'character_event.dart';
part 'character_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final CharacterRepository characterRepository;
  CharactersBloc(this.characterRepository) : super(CharactersInitial()) {
    on<CharacterFetched>(_fetchCharacters);
  }

  void _fetchCharacters(
      CharactersEvent event, Emitter<CharactersState> emit) async {
    emit(CharactersLoading());
    try {
      final List<CharacterModel> characters =
          await characterRepository.fetchCharacter();
      emit(CharactersLoaded(characters: characters));
    } catch (e) {
      emit(CharactersError(e.toString()));
    }
  }
}
