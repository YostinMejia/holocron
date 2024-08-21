import 'package:flutter/material.dart';
import 'package:star_wars/ui/widgets/bottom_navbar.dart';
import 'package:star_wars/ui/widgets/custom_appbar.dart';
import 'package:star_wars/ui/widgets/interaction_navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List<Widget> pages = [
    Container(
      alignment: Alignment.center,
      child: Text("Categories"),
    ),
    Container(
      alignment: Alignment.center,
      child: Text("Home"),
    ),
    Container(
      alignment: Alignment.center,
      child: Text("favorites"),
    ),
    Container(
      alignment: Alignment.center,
      child: Text("profile"),
    )
  ];
  void _onTapBottomNavBar(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
        appBar: const CustomAppBar(),
 body: Stack(
        children: [
          pages[selectedIndex],
          const CustomInteractionBar()
        ],
      ),        
        bottomNavigationBar: CustomBottomNavigationBar(
            selectedIndex: selectedIndex, onTap: _onTapBottomNavBar),
      );
  }
}
