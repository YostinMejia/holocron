import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/cubit/user_cubit.dart';
import 'package:star_wars/data/models/user_model.dart';
import 'package:star_wars/ui/widgets/network_img_loader.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state is UserLoggedIn) {
          final user = state.user;

          return user.favoritesUrl.isEmpty
              ? const Center(
                  child: Text(
                      "Click the like button on a character to save it and view it here.",
                      textAlign: TextAlign.center),
                )
              : Expanded(child: ShowLikes(likes: user.favoritesUrl));
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
  final List<FavoriteModel> likes;

  const ShowLikes({super.key, required this.likes});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      crossAxisCount: 2,
      children: likes
          .map((character) => Container(
              color: Theme.of(context).colorScheme.secondaryContainer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: NetworkImageLoader(imageUrl: character.imageUrl)),
                  Text(
                    character.name,
                    style: TextStyle(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer),
                  )
                ],
              )))
          .toList(),
    );
  }
}
