import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:star_wars/bloc/character_bloc.dart';
import 'package:star_wars/config/graphql_config.dart';
import 'package:star_wars/cubit/user_cubit.dart';
import 'package:star_wars/data/datasource/graphql_datasource.dart';
import 'package:star_wars/data/datasource/rest_datasource.dart';
import 'package:star_wars/data/repositories/character_repository.dart';
import 'package:star_wars/ui/screens/authentication.dart';
import 'package:star_wars/ui/theme/theme.dart';
import 'package:star_wars/ui/theme/util.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Russo One", "Audiowide");
    MaterialTheme materialTheme = MaterialTheme(textTheme);

    return RepositoryProvider(
      create: (context) => CharacterRepository(
          restDataSource: RESTDataSource(
              baseUrl: "https://akabab.github.io/starwars-api/api",
              getAllPath: "/all.json",
              getByIDPath: "/id",
              client: Client()),
          graphQlDataSource: GraphQlDataSource(
              graphQLClient: GraphQlConfig(
                      link:"https://studio.apollographql.com/public/star-wars-swapi/variant/current/explorer")
                          
                  .client())),
      child: MultiBlocProvider(
        providers:[
          BlocProvider<CharactersBloc>(
          create: (context) =>
            CharactersBloc(context.read<CharacterRepository>())),
          BlocProvider<UserCubit>(create: 
            (context)=>UserCubit())
            
            ],
        child: MaterialApp(
            title: "Holocron",
            debugShowCheckedModeBanner: false,
            theme: brightness == Brightness.light
                ? materialTheme.light()
                : materialTheme.dark(),
            home: const Authentication()),
      ),
    );
  }
}
