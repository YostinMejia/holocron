import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:star_wars/data/models/character_model.dart';

class RESTDataSource {
  late Uri uri;
  final String baseUrl;
  final String getByIDPath;
  final String getAllPath;
  final http.Client client;

  RESTDataSource(
      {required this.baseUrl,
      required this.getByIDPath,
      required this.getAllPath,
      required this.client})
      : uri = Uri.parse(baseUrl);

  Future<List<CharacterModel>> getAllCharacter() async {
    try {
      var res = await client.get(Uri.https(uri.host, uri.path + getAllPath));
      if (res.body.isEmpty) {
        return [];
      }
      final characters = (jsonDecode(res.body) as List<dynamic>).map((characterResponse) {
        var character = CharacterModel.fromJson(characterResponse);
        character.url = "$baseUrl$getByIDPath/${character.id}.json";
        return character;
      }).toList();
      return characters;
    } catch (e) {

      return [];
    }
  }

  Future<CharacterModel?> getCharacterById(String id) async {
    try {
      var res = await client.get(Uri.https(uri.host, "${uri.path}$getByIDPath$id"));

      // Could not find the character
      if (res.statusCode == 404) {
        return null;
      }

      return CharacterModel.fromJson(jsonDecode(res.body));
    } catch (e) {
      return null;
    }
  }

  Future<String?> getCharacterImage({String? name, String? id}) async {
    try {
      if (id != null) {
        CharacterModel? character = await getCharacterById(id);
        if (character != null) return character.image;
      } else if (name != null) {
        List<CharacterModel> characters = await getAllCharacter();
        for (var character in characters) {
          if (character.name == name) return character.image;
        }
      }

      return null;
    } catch (e) {
      return null;
    }
  }
}
