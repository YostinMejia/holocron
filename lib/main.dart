import 'package:flutter/material.dart';
import 'package:star_wars/config/graphql_config.dart';
import 'package:star_wars/data/datasource/graphql_datasource.dart';
import 'package:star_wars/data/datasource/rest_datasource.dart';
import 'package:star_wars/data/models/person_model.dart';
import 'package:star_wars/data/repositories/person_repository.dart';
import 'package:star_wars/ui/screens/home.dart';
import 'package:star_wars/ui/theme/theme.dart';
import 'package:star_wars/ui/theme/util.dart';
import 'package:star_wars/ui/widgets/bottom_nav_bar.dart';
import 'package:star_wars/ui/widgets/top_app_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Russo One", "Audiowide");
    MaterialTheme materialTheme = MaterialTheme(textTheme);

    return MaterialApp(
        title: "Star Wars Dex",
        debugShowCheckedModeBanner: false,
        theme: brightness == Brightness.light
            ? materialTheme.light()
            : materialTheme.dark(),
        home: const MainTemplateState());
  }
}

class MainTemplateState extends StatefulWidget {
  const MainTemplateState({super.key});

  @override
  State<MainTemplateState> createState() => _MainTemplateStateState();
}

class _MainTemplateStateState extends State<MainTemplateState> {
  int selectedIndex = 1;
  bool loaded = false;
  List<PersonModel> starWarsCharacters = [];
  late List<Widget> pages = [
    Container(
      alignment: Alignment.center,
      child: const Text("Categories"),
    ),
    Home(
      starWarsCharacters: starWarsCharacters,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text("favorites"),
    ),
    Container(
      alignment: Alignment.center,
      child: const Text("profile"),
    )
  ];
  Future<void> loadPeople() async {
    PeopleRepository peopleRepository = PeopleRepository(
        restDataSource: RESTDataSource(
            baseUrl: "https://akabab.github.io/starwars-api/api",
            getAllPath: "/all.json",
            getByIDPath: "/id"),
        graphQlDataSource: GraphQlDataSource(
            graphQLClient: GraphQlConfig(
                    link:
                        "https://swapi-graphql.netlify.app/.netlify/functions/index").client()
          )
    );
    starWarsCharacters = await peopleRepository.fetchPeople();
    setState(() {
      loaded = true;
    });
  }

  @override
  void initState() {
    super.initState();
    loadPeople();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: loaded
          ? IndexedStack(index: selectedIndex, children: pages)
          : const Center(child: CircularProgressIndicator()),
      bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: selectedIndex,
          onTap: (index) => {
                setState(() {
                  selectedIndex = index;
                })
              }),
    );
  }
}
