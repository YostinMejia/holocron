import 'package:flutter/material.dart';

class CustomInteractionBar extends StatelessWidget {
  const CustomInteractionBar({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        IconButton(
            icon: const Icon(Icons.favorite_border),
            color: colorScheme.tertiary,
            onPressed: () {}),
        IconButton(
            icon: const Icon(Icons.comment),
            color: colorScheme.tertiary,
            onPressed: () {}),
        IconButton(
            icon: const Icon(Icons.share),
            color: colorScheme.tertiary,
            onPressed: () {})
      ],
    );
  }
}
