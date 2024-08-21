
import 'package:flutter/material.dart';
import 'package:star_wars/ui/widgets/search_delegate.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;
    return AppBar(
      title: Icon(Icons.rocket_launch),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () async {
            dynamic value = await showSearch(
                context: context, delegate: MySearchDelegate());
          },
        ),
      ],
      foregroundColor: colors.primary,      
    );
  }

  @override
  Size get preferredSize {
    const appBarHeight = kToolbarHeight; // standard AppBar height
    return const Size.fromHeight(appBarHeight );
  }
}
