import 'package:flutter/material.dart';
import 'package:star_wars/ui/screens/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Star Wars Dex",
        debugShowCheckedModeBanner: false,
        home: Home()
        
    );
  }
}


