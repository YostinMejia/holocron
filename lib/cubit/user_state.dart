part of 'user_cubit.dart';

@immutable
sealed class UserState {}

final class UserInitial extends UserState {
  final Null user = null;
}

final class UserLoggedIn extends UserState{

  final UserModel user;
  final IsarUserModel isarUser;
  UserLoggedIn({required this.user, required this.isarUser });
}



