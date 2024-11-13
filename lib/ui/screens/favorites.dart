import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/cubit/user_cubit.dart';
import 'package:star_wars/data/models/character_model.dart';
import 'package:star_wars/ui/widgets/character_display.dart';
import 'package:star_wars/ui/widgets/network_img_loader.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state is UserLoggedIn) {
          final user = state.user;

          return user.favorites.liked.isEmpty
              ? const Center(
                  child: Text(
                      "Click the like button on a character to save it and view it here.",
                      textAlign: TextAlign.center),
                )
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Favorites",
                        style: Theme.of(context).textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(child: ShowLikes(likes: user.favorites.liked)),
                  ],
                );
        }
        return const Center(
            child: Text(
          "Log in and click the like button on a character to save it and view it here..",
          textAlign: TextAlign.center,
        ));
      },
    );
  }
}

class ShowLikes extends StatelessWidget {
  final List<CharacterModel> likes;

  const ShowLikes({super.key, required this.likes});

  dynamic redirect(context, characters, indexInit) {
    return Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Scaffold(
                appBar: AppBar(
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  title: Text(
                    "Favorites",
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                body: CharacterDisplay(
                  charactersDetails: likes,
                  indexInit: indexInit,
                  offsetDy: 0,
                ))));
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> charactersContainer = [];

    for (var i = 0; i < likes.length; i++) {
      charactersContainer.add(Container(
          color: Theme.of(context).colorScheme.primaryContainer,
          child: GestureDetector(
            onTap: () {
              redirect(context, likes, i);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: NetworkImageLoader(imageUrl: likes[i].image ?? "")),
                Text(
                  likes[i].name,
                  style: TextStyle(
                      color:
                          Theme.of(context).colorScheme.onSecondaryContainer),
                )
              ],
            ),
          )));
    }

    return GridView.count(
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 2,
        children: charactersContainer);
  }
}
