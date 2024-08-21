import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate {
  @override
  String get searchFieldLabel => "Buscar";

  @override
  List<Widget>? buildActions(BuildContext context) {
    List<Widget>? widgets = [];

    if (query.isNotEmpty) {
      widgets.add(
        IconButton(
          icon: const Icon(Icons.close_outlined),
          onPressed: () => query = "",
        ),
      );
    }

    widgets.add(TextButton(
      child: const Text("Buscar"),
      onPressed: () {
        query = "buscando";
      },
    ));

    return widgets;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const BackButtonIcon(),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("Result");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text("Sugestions");
  }
}
