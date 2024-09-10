import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlConfig {
  final String? link;

  GraphQlConfig({this.link});

  GraphQLClient client() {
    return GraphQLClient(
      link: HttpLink(link ?? "https://swapi-graphql.netlify.app/.netlify/functions/index"),
      cache:
          GraphQLCache(), // The default store is the InMemoryStore, which does NOT persist to disk
    );
  }
}
