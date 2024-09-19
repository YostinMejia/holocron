import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:star_wars/data/models/character_model.dart';

class GraphQlDataSource {
  final GraphQLClient graphQLClient;

  GraphQlDataSource({required this.graphQLClient});

  Future<List<CharacterModel>> getAllPeople({int? first , int? last }) async {
    String getManyQuery = """
            query Query(\$first: Int, \$last: Int) {

        allPeople(first: \$first, last: \$last) {
          totalCount
          people {
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
      fetchPolicy: FetchPolicy.noCache,
      document: gql(getManyQuery),
      variables: {"first": first, "last": last},
    ));

    if (result.hasException) {
      throw Exception(result.exception);
    }

    if (result.data == null) {
      return [];
    }
    return (result.data?["allPeople"]["people"] as List<dynamic>)
        .map((person) => CharacterModel.fromJson(person))
        .toList();
  }
}
