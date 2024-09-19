import 'package:flutter/material.dart';

class CustomInteractionBar extends StatefulWidget {
  bool liked;
  List<String> comments;

  CustomInteractionBar(
      {super.key, required this.liked, required this.comments});

  @override
  State<CustomInteractionBar> createState() => _CustomInteractionBarState();
}

class _CustomInteractionBarState extends State<CustomInteractionBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            IconButton(
              //TODO: define wich stateholder im gonna use and if its necesary to add user´s informatión, like comments, favirorites
              onPressed: () {
                setState(() {
                  widget.liked = !widget.liked;
                });
              },
              isSelected: widget.liked,
              selectedIcon: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              color: Colors.white,
              icon: const Icon(Icons.favorite),
            ),
            Transform.translate(
                offset: const Offset(0, -10),
                child: Text("${widget.liked}",
                    style: const TextStyle(color: Colors.white)))
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
