import 'package:isar/isar.dart';
import 'package:star_wars/data/models/isar_character_model.dart';
import 'package:star_wars/data/models/isar_user_model.dart';

class IsarDatasource {
  final Isar isar;

  const IsarDatasource({required this.isar});

  Future<List<IsarCharacterModel>> fetchCharacters(IsarUserModel user) async {
    return user.favorites.liked;
  }

  Future<void> deleteFavorite(IsarUserModel user, String characterId) async {
    user.favorites.ids.remove(characterId);
    user.favorites.liked.removeWhere((character) => character.id == characterId);

    await isar.writeAsync((isar) {
      isar.isarUserModels.put(user);
    });
  }

  Future<void> saveCharacter(IsarUserModel user, IsarCharacterModel character) async {
    user.favorites.ids.add(character.id);
    user.favorites.liked.add(character);

    await isar.writeAsync((isar) {
      isar.isarUserModels.put(user);
    });
  }

  Future<void> saveUser(IsarUserModel isarUser) async {
    await isar.writeAsync((isar) {
      isar.isarUserModels.put(isarUser);
    });
  }

  Future<IsarUserModel?> getUser(String email) async {
    return isar.isarUserModels
        .where()
        .emailEqualTo(email).findFirst();
    
  }
}
