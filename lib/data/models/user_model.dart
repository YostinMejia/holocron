import 'package:flutter/material.dart';

@immutable
class FavoriteModel {
  final String id;
  final String url;
  final String name;
  final String imageUrl;

  const FavoriteModel(
      {required this.id,
      required this.url,
      required this.name,
      required this.imageUrl});
}

class UserModel {
  final String id;
  final String name;
  final String email;
  final List<FavoriteModel> favoritesUrl;
  final List<String> comments;

  UserModel(
      {required this.id,
      required this.email,
      required this.name,
      required this.favoritesUrl,
      required this.comments});

  void addFavorite(FavoriteModel favorite) {
    favoritesUrl.add(favorite);
  }

  void deleteFavorite(String id) {
    favoritesUrl.removeWhere((favorite) => favorite.id == id);
  }
}
