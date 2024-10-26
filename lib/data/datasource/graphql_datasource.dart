import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:star_wars/data/models/character_model.dart';

class GraphQlDataSource {
  final GraphQLClient graphQLClient;

  GraphQlDataSource({required this.graphQLClient});

  Future<List<CharacterModel>> getAllCharacter({int? first , int? last }) async {
    String getManyQuery = """
        query (\$first: Int, \$last: Int) {
        allPeople(first: \$first, last: \$last) {
          totalCount
          Person {
            birthYear
            created
            edited
            eyeColor
            gender
            hairColor
            height
            id
            mass
            name
            skinColor
          }
        }
      }
    """;

    QueryResult result = await graphQLClient.query(QueryOptions(
      document: gql(getManyQuery),
      variables: {"first": first, "last": last},
    ));
    if (result.hasException) {
      throw Exception(result.exception);
    }

    if (result.data == null) {
      return [];
    }
    return (result.data?["allPerson"]["Person"] as List<dynamic>)
        .map((person) => CharacterModel.fromJson(person))
        .toList();
  }
}
