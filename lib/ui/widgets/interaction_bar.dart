import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/cubit/user_cubit.dart';
import 'package:star_wars/data/models/user_model.dart';

class CustomInteractionBar extends StatefulWidget {
  final bool liked;
  final List<String> comments;
  final FavoriteModel characterInfo;

  const CustomInteractionBar(
      {super.key,
      required this.liked,
      required this.comments,
      required this.characterInfo});

  @override
  State<CustomInteractionBar> createState() => _CustomInteractionBarState();
}

class _CustomInteractionBarState extends State<CustomInteractionBar> {
  late bool liked;
  late List<String> comments;

  @override
  void initState() {
    super.initState();
    liked = widget.liked;
    comments = widget.comments;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  liked = !liked;

                  if (context.read<UserCubit>().state is UserLoggedIn) {
                    (context.read<UserCubit>().state);
                    liked
                        ? BlocProvider.of<UserCubit>(context).addFavorite(widget.characterInfo)
                        :BlocProvider.of<UserCubit>(context).deleteFavorite(widget.characterInfo.id);
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
                child:
                    Text("$liked", style: const TextStyle(color: Colors.white)))
          ],
        ),
        Column(
          children: [
            IconButton(
                onPressed: () {},
                isSelected: widget.liked,
                color: Colors.white,
                icon: const Icon(Icons.comment)),
            Transform.translate(
                offset: const Offset(0, -10),
                child: Text("${widget.comments.length}",
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
