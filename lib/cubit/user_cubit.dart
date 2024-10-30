import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/data/models/character_model.dart';
import 'package:star_wars/data/models/user_model.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void logInUser(
      {required String id,
      String? name,
      String? lastName,
      required String email}) {
    final user = UserModel(
        id: id,
        email: email,
        name: name ?? "John Doe",
        favorites:Favorites(liked: [], ids: {}),
        comments: []);
    emit(UserLoggedIn(user: user));
  }

  void addFavorite(CharacterModel character) {
    if (state is UserLoggedIn) {
      final currentUser = (state as UserLoggedIn).user;
      currentUser.addFavorite(character);
      final updatedUser = UserModel(
        id: currentUser.id,
        email: currentUser.email,
        name: currentUser.name,
        favorites: currentUser.favorites,
        comments: currentUser.comments,
      );
      emit(UserLoggedIn(user: updatedUser));
    }
  }

  void deleteFavorite(String id) {
    if (state is UserLoggedIn) {
      final currentUser = (state as UserLoggedIn).user;
      currentUser.deleteFavorite(id);

      final updatedUser = UserModel(
        id: currentUser.id,
        email: currentUser.email,
        name: currentUser.name,
        favorites: currentUser.favorites,
        comments: currentUser.comments,
      );
      emit(UserLoggedIn(user: updatedUser));
    }
  }
}
