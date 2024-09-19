import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:star_wars/data/models/character_model.dart';

class RESTDataSource {
  final String baseUrl;
  final String getByIDPath;
  final String getAllPath;
  RESTDataSource({required this.baseUrl, required this.getByIDPath, required this.getAllPath});

  Future<List<CharacterModel>> getAllPeople() async {
    Uri uri = Uri.parse(baseUrl);
    var res = await http.get(Uri.https(uri.host, uri.path+getAllPath));
    if (res.body.isEmpty) {
      return [];
    }

    return (jsonDecode(res.body) as List<dynamic>)
        .map((person) => CharacterModel.fromJson(person))
        .toList();
  }

  Future<CharacterModel?> getPersonById(String id) async {
    Uri uri = Uri.parse(baseUrl);
    var res = await http.get(Uri.https(uri.host, "${uri.path}$getByIDPath$id"));

    if (res.statusCode == 404){
      return null;
    }

    return CharacterModel.fromJson(jsonDecode(res.body));
  }

  Future<String?> getPersonImage({String? name, String? id}) async {
    if (id != null) {
      CharacterModel? person = await getPersonById(id);
      if (person != null) return person.image;
    } else if (name != null) {
      List<CharacterModel> people = await getAllPeople();
      for (var person in people) {
        if (person.name == name) return person.image;
      }
    }

    return null;
  }
}
