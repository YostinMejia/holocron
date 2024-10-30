import 'package:star_wars/data/datasource/graphql_datasource.dart';
import 'package:star_wars/data/datasource/rest_datasource.dart';
import 'package:star_wars/data/models/character_model.dart';

class CharacterRepository {
  final GraphQlDataSource graphQlDataSource;
  final RESTDataSource restDataSource;

  CharacterRepository(
      {required this.graphQlDataSource, required this.restDataSource});

  Future<List<CharacterModel>> fetchCharacter([int? amount]) async {
    List<CharacterModel> charactersREST = await restDataSource.getAllCharacter();
    
    if (charactersREST.isEmpty) {
      return await graphQlDataSource.getAllCharacter();
    }

    return charactersREST;
  }
}
