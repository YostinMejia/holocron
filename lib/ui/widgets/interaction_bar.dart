import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/cubit/user_cubit.dart';
import 'package:star_wars/data/models/character_model.dart';

class CustomInteractionBar extends StatelessWidget {
  final CharacterModel characterInfo;

  const CustomInteractionBar({super.key, required this.characterInfo});

  @override
  Widget build(BuildContext context) {
    List<String> comments = [];
    return Column(
      children: [
        Like(characterInfo: characterInfo),
        Column(
          children: [
            IconButton(
                onPressed: () {},
                color: Colors.white,
                icon: const Icon(Icons.comment)),
            Transform.translate(
                offset: const Offset(0, -10),
                child: Text("${comments.length}",
                    style: const TextStyle(color: Colors.white)))
          ],
        ),
        Column(
          children: [
            IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(Icons.share)),
            Transform.translate(
                offset: const Offset(0, -10),
                child: const Text(
                  "Share",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ],
    );
  }
}

class Like extends StatefulWidget {
  final CharacterModel characterInfo;
  const Like({super.key, required this.characterInfo});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  @override
  Widget build(BuildContext context) {
    bool liked = (context.read<UserCubit>().state as UserLoggedIn).user.favorites.ids.contains(widget.characterInfo.id);
    return Column(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              liked = !liked;

              if (context.read<UserCubit>().state is UserLoggedIn) {
                (context.read<UserCubit>().state);
                liked
                    ? BlocProvider.of<UserCubit>(context).addFavorite(widget.characterInfo)
                    : BlocProvider.of<UserCubit>(context).deleteFavorite(widget.characterInfo.id);
              }
            });
          },
          isSelected: liked,
          selectedIcon: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          color: Colors.white,
          icon: const Icon(Icons.favorite),
        ),
        Transform.translate(
            offset: const Offset(0, -10),
            child: Text("$liked", style: const TextStyle(color: Colors.white)))
      ],
    );
  }
}
