import 'package:flutter/material.dart';

class NetworkImageLoader extends StatelessWidget {
  const NetworkImageLoader({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      loadingBuilder: (context, child, ImageChunkEvent? loadingProgress) {
        return loadingProgress == null
            ? child
            : const Center(child: CircularProgressIndicator.adaptive());
      },
      errorBuilder: (context, error, stackTrace) {
        return Center(
          child: Icon(
            Icons.error,
            color: Theme.of(context).colorScheme.error,
          ),
        );
      },
      fit: BoxFit.cover,
    );
  }
}