import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:star_wars/data/datasource/rest_datasource.dart';
import 'package:star_wars/data/models/character_model.dart';

import 'rest_datasource_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group("REST API data source", () {
    late http.Client client;
    late RESTDataSource restDataSource;

    setUp(() {
      client = MockClient();
      restDataSource = RESTDataSource(
          baseUrl: "https://akabab.github.io/starwars-api/api",
          getByIDPath: "/id",
          getAllPath: "/all.json",
          client: client);
    });
    group("- getAllCharacter", () {
      test("Returns an empty list if the response body is empty ", () async {
        // Mock an empty response
        when(client.get(Uri.https(restDataSource.uri.host,
                restDataSource.uri.path + restDataSource.getAllPath)))
            .thenAnswer((_) async => http.Response("", 200));

        // Call the function we are testing
        List<CharacterModel> res = await restDataSource.getAllCharacter();
        expect(res, "");
      });

      test(
          "Returns a List<CharacterModel> if the http completes successfully and response with valid data ",
          () async {
        // Mock valid JSON data
        const String validData = """
        [{
            "id": 1,
            "name": "Luke Skywalker",
            "height": 1.72,
            "mass": 73,
            "gender": "male",
            "homeworld": "tatooine",
            "wiki": "http://starwars.wikia.com/wiki/Luke_Skywalker",
            "image": "https://vignette.wikia.nocookie.net/starwars/images/2/20/LukeTLJ.jpg",
            "born": -19,
            "bornLocation": "polis massa",
            "died": 34,
            "diedLocation": "ahch-to",
            "species": "human",
            "hairColor": "blond",
            "eyeColor": "blue",
            "skinColor": "light",
            "cybernetics": "Prosthetic right hand",
            "affiliations": [
              "Alliance to Restore the Republic",
              "Red Squadron",
              "Rogue Squadron",
              "Massassi Group",
              "Leia Organa's team",
              "Endor strike team",
              "Jedi Order",
              "Bright Tree tribe",
              "New Republic",
              "Resistance"
            ],
            "masters": [
              "Obi-Wan Kenobi",
              "Yoda"
            ],
            "apprentices": [
              "Leia Organa",
              "Ben Solo (along with a dozen apprentices)",
              "Rey"
            ],
            "formerAffiliations": []
          }]
        """;

        // Mock the response with the valid data
        when(client.get(Uri.https(restDataSource.uri.host,
                restDataSource.uri.path + restDataSource.getAllPath)))
            .thenAnswer((_) async => http.Response(validData, 200));

        // Call the function we are testing
        List<CharacterModel> response = await restDataSource.getAllCharacter();

        expect(response, isA<List<CharacterModel>>());
        // Assert: Ensure the data is stored correctly
        final character = response.first;

        expect(character.name, equals("Luke Skywalker"),
            reason: "The character name should be 'Luke Skywalker'");
        expect(character.birthYear, isNull,
            reason: "Birth year should be null if it's missing in the data");
        expect(character.eyeColor, equals("blue"),
            reason: "The eye color should be 'blue'");
        expect(character.skinColor, equals("light"),
            reason: "The skin color should be 'light'");
        expect(character.gender, equals("male"),
            reason: "The gender should be 'male'");
        expect(character.height, equals(1.72),
            reason: "The height should be 1.72 meters");
        expect(character.mass, equals(73), reason: "The mass should be 73 kg");
        expect(character.hairColor, equals("blond"),
            reason: "The hair color should be 'blond'");
      });

      test("Returns an empty list if the returned JSON format is invalid ",
          () async {
        // Mock invalid JSON data
        // Issue: The comma separating "name" and "gender" is missing,
        // and there's an extra comma after the closing brace.

        const String invalidData = """
        [{
            "id": 1,
            "name": "Luke Skywalker"
            "gender": "male",
          },
          ]
        """;

        // Mock the client to return the invalid JSON when the get request is made
        when(client.get(Uri.https(restDataSource.uri.host,
                restDataSource.uri.path + restDataSource.getAllPath)))
            .thenAnswer((_) async => http.Response(invalidData, 200));

        // Call the function we are testing
        List<CharacterModel> response = await restDataSource.getAllCharacter();

        // Assert that the function handles invalid JSON by returning an empty list
        expect(response, []);
      });
    });

    group("- getPersonById", () {
      String characterID = "1.json";

      test("Returns null if the response status code is 404", () async {
        when(client.get(Uri.https(restDataSource.uri.host,
                "${restDataSource.uri.path}${restDataSource.getByIDPath}$characterID")))
            .thenAnswer((_) async => http.Response("", 404));

        CharacterModel? response = await restDataSource.getCharacterById("");

        expect(response, isNull);
      });

      test("Returns null if the returned JSON format is invalid", () async {
        when(client.get(Uri.https(restDataSource.uri.host,
                "${restDataSource.uri.path}${restDataSource.getByIDPath}$characterID")))
            .thenAnswer((_) async => http.Response("", 404));

        CharacterModel? response = await restDataSource.getCharacterById("");

        expect(response, isNull);
      });

      test(
          "Returns a CharacterModel if the http completes successfully and response with valid data ",
          () async {
        // Mock valid JSON data
        const String validData = """
        {
            "id": 1,
            "name": "Luke Skywalker",
            "height": 1.72,
            "mass": 73,
            "gender": "male",
            "homeworld": "tatooine",
            "wiki": "http://starwars.wikia.com/wiki/Luke_Skywalker",
            "image": "https://vignette.wikia.nocookie.net/starwars/images/2/20/LukeTLJ.jpg",
            "born": -19,
            "bornLocation": "polis massa",
            "died": 34,
            "diedLocation": "ahch-to",
            "species": "human",
            "hairColor": "blond",
            "eyeColor": "blue",
            "skinColor": "light",
            "cybernetics": "Prosthetic right hand",
            "affiliations": [
              "Alliance to Restore the Republic",
              "Red Squadron",
              "Rogue Squadron",
              "Massassi Group",
              "Leia Organa's team",
              "Endor strike team",
              "Jedi Order",
              "Bright Tree tribe",
              "New Republic",
              "Resistance"
            ],
            "masters": [
              "Obi-Wan Kenobi",
              "Yoda"
            ],
            "apprentices": [
              "Leia Organa",
              "Ben Solo (along with a dozen apprentices)",
              "Rey"
            ],
            "formerAffiliations": []
          }
        """;

        // Mock the response with the valid data
        when(client.get(Uri.https(restDataSource.uri.host,
                "${restDataSource.uri.path}${restDataSource.getByIDPath}$characterID")))
            .thenAnswer((_) async => http.Response(validData, 200));

        // Call the function we are testing
        CharacterModel? character =
            await restDataSource.getCharacterById(characterID);

        expect(character, isA<CharacterModel>());
        // Assert: Ensure the data is stored correctly

        expect(character!.name, equals("Luke Skywalker"),
            reason: "The character name should be 'Luke Skywalker'");
        expect(character.birthYear, isNull,
            reason: "Birth year should be null if it's missing in the data");
        expect(character.eyeColor, equals("blue"),
            reason: "The eye color should be 'blue'");
        expect(character.skinColor, equals("light"),
            reason: "The skin color should be 'light'");
        expect(character.gender, equals("male"),
            reason: "The gender should be 'male'");
        expect(character.height, equals(1.72),
            reason: "The height should be 1.72 meters");
        expect(character.mass, equals(73), reason: "The mass should be 73 kg");
        expect(character.hairColor, equals("blond"),
            reason: "The hair color should be 'blond'");
      });
    });
  });
}
