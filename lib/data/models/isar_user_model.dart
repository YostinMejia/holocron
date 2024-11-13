import 'package:isar/isar.dart';
import 'package:star_wars/data/models/character_model.dart';
import 'package:star_wars/data/models/isar_character_model.dart';
import 'package:star_wars/data/models/user_model.dart';

part 'isar_user_model.g.dart';

@embedded
class IsarFavorites {
  final List<IsarCharacterModel> liked;
  List<String> ids;

  IsarFavorites({required this.liked, required this.ids});

  Favorites toFavoritesModel() {
    return Favorites(
        liked: liked
            .map((character) => CharacterModel(
                id: character.id,
                birthYear: character.birthYear,
                eyeColor: character.eyeColor,
                gender: character.gender,
                hairColor: character.hairColor,
                name: character.name,
                image: character.image,
                skinColor: character.skinColor,
                url: character.url))
            .toList(),
        ids: ids.toSet());
  }
}

@Collection()
class IsarUserModel {
  final String id;
  final String name;
  final String email;
  final IsarFavorites favorites;
  final List<String> comments;

  IsarUserModel(
      {required this.id,
      required this.email,
      required this.name,
      required this.favorites,
      required this.comments});

  UserModel toUserModel() {
    return UserModel(
        id: id,
        email: email,
        name: name,
        favorites: favorites.toFavoritesModel(),
        comments: comments);
  }

  factory IsarUserModel.fromUserModel(UserModel user) {
    List<IsarCharacterModel> favorites = user.favorites.liked
        .map((character) => IsarCharacterModel.fromCharacterModel(character))
        .toList();
    return IsarUserModel(
        id: user.id,
        email: user.email,
        name: user.name,
        favorites:
            IsarFavorites(liked: favorites, ids: user.favorites.ids.toList()),
        comments: user.comments);
  }
}
