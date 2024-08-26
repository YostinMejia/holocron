import 'package:flutter/material.dart';
import 'package:star_wars/ui/widgets/search_delegate.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency:
          true, // Allows clicks on elements behind the AppBar and makes the AppBar transparent
      title: const Icon(Icons.rocket_launch),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () async {
            dynamic value = await showSearch(
                context: context, delegate: CustomSearchDelegate());
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize {
    const appBarHeight = kToolbarHeight; // standard AppBar height
    return const Size.fromHeight(appBarHeight);
  }
}
