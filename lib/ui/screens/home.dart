import 'package:flutter/material.dart';
import 'package:star_wars/data/models/person_model.dart';
import 'package:star_wars/ui/widgets/character_display.dart';
import 'package:star_wars/ui/widgets/interaction_bar.dart';

class Home extends StatefulWidget {
  final List<PersonModel> starWarsCharacters;
  const Home({super.key, required this.starWarsCharacters});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack( 
      children: [
        Positioned.fill(
            child: CharacterDisplay(
          peopleDetails: widget.starWarsCharacters,
        )),
        const Positioned(right: 0, bottom: 30, child: CustomInteractionBar())
      ],
    );
  }
}
