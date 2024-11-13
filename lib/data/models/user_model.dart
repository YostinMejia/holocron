import 'package:star_wars/data/models/character_model.dart';

class Favorites{
  final List<CharacterModel> liked;
  final Set<String> ids;

  Favorites({required this.liked, required this.ids});
}


class UserModel {
  final String id;
  final String name;
  final String email;
  final Favorites favorites;
  final List<String> comments;

  UserModel(
      {required this.id,
      required this.email,
      required this.name,
      required this.favorites,
      required this.comments});

  void addFavorite(CharacterModel character) {
    favorites.liked.add(character);
    favorites.ids.add(character.id);
  }

  void deleteFavorite(String id) {
    favorites.liked.removeWhere((favorite) => favorite.id == id);
    favorites.ids.remove(id);
  }
}
