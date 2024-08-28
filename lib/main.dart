import 'package:flutter/material.dart';
import 'package:star_wars/ui/theme/theme.dart';
import 'package:star_wars/ui/theme/util.dart';
import 'package:star_wars/ui/screens/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Russo One", "Audiowide");
    MaterialTheme materialTheme = MaterialTheme(textTheme);

    return MaterialApp(
        title: "Star Wars Dex",
        debugShowCheckedModeBanner: false,
        theme: brightness == Brightness.light
            ? materialTheme.light()
            : materialTheme.dark(),
        home: const Home());
  }
}
