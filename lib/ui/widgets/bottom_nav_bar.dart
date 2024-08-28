import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar(
      {super.key, required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;
    TextTheme fonts = Theme.of(context).textTheme;
    return BottomNavigationBar(
        elevation: 0,
        selectedItemColor: colors.onSecondaryContainer,
        unselectedItemColor: colors.onSecondaryContainer,
        selectedLabelStyle: fonts.labelMedium,
        unselectedLabelStyle: fonts.labelMedium,
        currentIndex: selectedIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined,
                color: colors.onSecondaryContainer),
            activeIcon: Icon(
              Icons.category,
              color: colors.onSecondaryContainer,
            ),
            label: "Categories",
            backgroundColor: colors.secondaryContainer,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: colors.onSecondaryContainer,
            ),
            activeIcon: Icon(
              Icons.home,
              color: colors.onSecondaryContainer,
            ),
            label: "Home",
            backgroundColor: colors.secondaryContainer,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined,
                color: colors.onSecondaryContainer),
            activeIcon: Icon(
              Icons.favorite,
              color: colors.onSecondaryContainer,
            ),
            label: "Favorites",
            backgroundColor: colors.secondaryContainer,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,
                color: colors.onSecondaryContainer),
            activeIcon: Icon(
              Icons.person,
              color: colors.onSecondaryContainer,
            ),
            label: "Profile",
            backgroundColor: colors.secondaryContainer,
          )
        ]);
  }
}
