import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/bloc/character_bloc.dart';
import 'package:star_wars/ui/screens/favorites.dart';
import 'package:star_wars/ui/screens/home.dart';
import 'package:star_wars/ui/screens/profile.dart';
import 'package:star_wars/ui/widgets/bottom_nav_bar.dart';
import 'package:star_wars/ui/widgets/top_app_bar.dart';

class MainTemplateState extends StatefulWidget {
  const MainTemplateState({super.key});

  @override
  State<MainTemplateState> createState() => _MainTemplateStateState();
}

class _MainTemplateStateState extends State<MainTemplateState> {
  int selectedIndex = 1;

  @override
  void initState() {
    super.initState();
    context.read<CharactersBloc>().add(CharacterFetched());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: IndexedStack(index: selectedIndex, children: [
        Container(
          alignment: Alignment.center,
          child: const Text("Categories"),
        ),
        const Home(),
        const Favorite(),
        const Profile()
      ]),
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
