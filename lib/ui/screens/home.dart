import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/bloc/character_bloc.dart';
import 'package:star_wars/ui/widgets/character_display.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    context.read<CharactersBloc>().add(CharacterFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersBloc, CharactersState>(
        builder: (context, state) {
      if (state is CharactersError) {
        return Center(
          child: Text(state.errorMessage),
        );
      }
      if (state is! CharactersLoaded) {
        return const Center(child: CircularProgressIndicator.adaptive());
      }

      return CharacterDisplay(charactersDetails: state.characters);
    });
  }
}
