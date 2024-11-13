import 'package:star_wars/data/datasource/graphql_datasource.dart';
import 'package:star_wars/data/datasource/isar_datasource.dart';
import 'package:star_wars/data/datasource/rest_datasource.dart';
import 'package:star_wars/data/models/character_model.dart';
import 'package:star_wars/data/models/isar_character_model.dart';

class CharacterRepository {
  final GraphQlDataSource graphQlDataSource;
  final RESTDataSource restDataSource;
  final IsarDatasource isarDatasource;

  CharacterRepository({required this.graphQlDataSource, required this.restDataSource, required this.isarDatasource});

  Future<List<CharacterModel>> fetchCharacter([int? amount]) async {
    List<CharacterModel> charactersREST = await restDataSource.getAllCharacter();
    
    if (charactersREST.isEmpty) {
      return await graphQlDataSource.getAllCharacter();
    }

    return charactersREST;
  }

  Future<List<IsarCharacterModel>> fetchLikedCharacters(String emailUSer)async{
    // return await isarDatasource.fetchCharacters(emailUSer);
    return [];
  }

}
