import 'package:star_wars/data/datasource/graphql_datasource.dart';
import 'package:star_wars/data/datasource/rest_datasource.dart';
import 'package:star_wars/data/models/person_model.dart';

class PeopleRepository {
  final GraphQlDataSource graphQlDataSource;
  final RESTDataSource restDataSource;

  PeopleRepository(
      {required this.graphQlDataSource, required this.restDataSource});

  Future<List<PersonModel>> fetchPeople([int? amount]) async {
    List<PersonModel> peopleGraphql = await restDataSource.getAllPeople();;

    if (peopleGraphql.isEmpty) {
      return graphQlDataSource.getAllPeople();
    }
  
    return peopleGraphql;
  }
}
