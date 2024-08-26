import 'package:flutter/material.dart';
import 'package:star_wars/ui/widgets/bottom_nav_bar.dart';
import 'package:star_wars/ui/widgets/top_app_bar.dart';
import 'package:star_wars/ui/widgets/character_display.dart';
import 'package:star_wars/ui/widgets/interaction_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<Widget> pages;

  @override
  void initState() {
    super.initState();

    pages = [
      Container(
        alignment: Alignment.center,
        child: const Text("Categories"),
      ),
      Stack(
        children: [
          CharacterDisplay(
            peopleDetails: starWarsCharacters,
          ),
          const CustomInteractionBar()
        ],
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
  }

  List<Map<String, dynamic>> starWarsCharacters = [
    {
      "name": "Luke Skywalker",
      "gender": "Male",
      "skinColor": "Fair",
      "imageUrl":
          "https://m.media-amazon.com/images/M/MV5BYTRhNjcwNWQtMGJmMi00NmQyLWE2YzItODVmMTdjNWI0ZDA2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_FMjpg_UX1000_.jpg",
    },
    {
      "name": "Leia Organa",
      "gender": "Female",
      "skinColor": "Light",
      "imageUrl": "https://pbs.twimg.com/media/DU4dljEW4AAfcKj.jpg",
    },
    {
      "name": "The Mandalorian",
      "gender": "Male",
      "skinColor": "Unknown",
      "imageUrl":
          "https://files.ekmcdn.com/allwallpapers/images/digital-printing-wallpaper-star-wars-the-mandalorian-big-impaler--(2)-34726-p.jpg?v=F7A97542-DC79-4ECF-8509-B1E7BBBED1DF",
    },
    {
      "name": "Rey",
      "gender": "Female",
      "skinColor": "Light",
      "imageUrl":
          "https://artofthemovies.co.uk/cdn/shop/products/chinese_last_jedi_advance_NG06267_B-100452.jpg?v=1611688387",
    },
    {
      "name": "Darth Vader",
      "gender": "Male",
      "skinColor": "Pale",
    }
  ];

  int selectedIndex = 1;

  void _onTapBottomNavBar(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: IndexedStack(index: selectedIndex, children: pages),
      bottomNavigationBar: CustomBottomNavigationBar(
          selectedIndex: selectedIndex, onTap: _onTapBottomNavBar),
    );
  }
}
