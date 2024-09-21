import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:star_wars/bloc/character_bloc.dart';
import 'package:star_wars/data/models/character_model.dart';
import 'package:star_wars/data/repositories/character_repository.dart';

import 'character_bloc_test.mocks.dart';

// Generate a mock class for the CharacterRepository using Mockito
@GenerateMocks([CharacterRepository])
void main() {
  group("- CharacterBloc", () {
    late CharactersBloc charactersBloc;
    late MockCharacterRepository mockCharacterRepository;
    setUp(() {
      mockCharacterRepository = MockCharacterRepository();
      charactersBloc = CharactersBloc(mockCharacterRepository);
    });

    test("Initial state is an empty list[]", () {
      expect((charactersBloc.state as CharactersInitial).characters, []);
    });

    blocTest(
      'emits [CharactersLoading,CharactersLoaded] when CharacterFetched() is added.',
      build: () {
        // Create a fake character for testing
        CharacterModel fakeCharacter = CharacterModel(
          id: "999",
          birthYear: "50BBY",
          eyeColor: "green",
          gender: "male",
          hairColor: "black",
          name: "Zan Varlok",
          skinColor: "tan",
          height: 1.85,
          mass: 80.0,
          image: "https://example.com/zan-varlok.jpg",
        );

        // Configure the mock to return a predefined list of characters when fetchCharacter is called.
        when(mockCharacterRepository.fetchCharacter())
            .thenAnswer((_) async => [fakeCharacter]);
        return charactersBloc;
      },
      act: (bloc) => bloc.add(CharacterFetched()),
      expect: () => [
        isA<CharactersLoading>(),
        // Ensure that the CharactersLoaded state stores the list of characters
        isA<CharactersLoaded>().having((state) => state.characters,
            "List of characters", isA<List<CharacterModel>>())
      ],
    );

    blocTest(
      "emits [CharactersLoading,CharacterError] when CharacterFetched is added but fails",
      build: () {
        // Configure the mock to throw an exception when fetchCharacters is called
        when(mockCharacterRepository.fetchCharacter())
            .thenThrow(Exception("Error test"));
        return charactersBloc;
      },
      act: (bloc) => bloc.add(CharacterFetched()),
      expect: () => [
        isA<CharactersLoading>(),
        // Ensure that the CharactersError state contains the error message
        isA<CharactersError>().having((status) => status.errorMessage,
            "Error message", contains("Error test"))
      ],
    );
  });
}
