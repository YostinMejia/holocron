import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar(
      {super.key, required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return BottomNavigationBar(
        selectedItemColor: colorScheme.error,
        unselectedItemColor: colorScheme.primary,
        currentIndex: selectedIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: "Categories",
            backgroundColor: Color.fromRGBO(0, 255, 0, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Color.fromRGBO(255, 0, 0, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            activeIcon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_4_outlined),
            activeIcon: Icon(Icons.person),
            label: "Profile",
          )
        ]);
  }
}
