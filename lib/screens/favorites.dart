import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'MyHomePage.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var favoritesList = appState.favorites;

    return Column(
      children: [
        Text("You have ${appState.favorites.length} favorites:"),
        for (var element in favoritesList)
          ListTile(
            leading: IconButton(
              onPressed: () {
                appState.removeFavorite(element);
              },
              icon: Icon(Icons.favorite),
            ),
            title: Text(element.toString()),
          )
      ],
    );
  }
}
