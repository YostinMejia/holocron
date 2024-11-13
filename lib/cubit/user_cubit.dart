import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/data/models/character_model.dart';
import 'package:star_wars/data/models/isar_character_model.dart';
import 'package:star_wars/data/models/isar_user_model.dart';
import 'package:star_wars/data/models/user_model.dart';
import 'package:star_wars/data/repositories/character_repository.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final CharacterRepository characterRepository;

  UserCubit(this.characterRepository) : super(UserInitial());

  Future<void> logInUser(
      {required String id,
      String? name,
      String? lastName,
      required String email}) async {
    late UserModel user;
    IsarUserModel? isarUser;

    isarUser = await characterRepository.isarDatasource.getUser(email);

    if (isarUser == null) {
      user = UserModel(
          id: id,
          email: email,
          name: name ?? "John Doe",
          favorites: Favorites(liked: [], ids: {}),
          comments: []);

      await characterRepository.isarDatasource
          .saveUser(IsarUserModel.fromUserModel(user));

      emit(UserLoggedIn(
          user: user, isarUser: IsarUserModel.fromUserModel(user)));
    } else {
      user = isarUser.toUserModel();
      emit(UserLoggedIn(user: user, isarUser: isarUser));
    }
  }

  void addFavorite(CharacterModel character) async {
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

      await characterRepository.isarDatasource.saveCharacter(
          (state as UserLoggedIn).isarUser,
          IsarCharacterModel.fromCharacterModel(character));

      emit(UserLoggedIn(
          user: updatedUser, isarUser: (state as UserLoggedIn).isarUser));
    }
  }

  void deleteFavorite(String id) async {
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

      await characterRepository.isarDatasource
          .deleteFavorite((state as UserLoggedIn).isarUser, id);

      emit(UserLoggedIn(
          user: updatedUser, isarUser: (state as UserLoggedIn).isarUser));
    }
  }
}
