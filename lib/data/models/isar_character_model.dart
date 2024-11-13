import 'package:isar/isar.dart';
import 'package:star_wars/data/models/character_model.dart';
part 'isar_character_model.g.dart';

@embedded
class IsarCharacterModel {
  final String id;

  String name;

  String? birthYear;
  String? eyeColor;
  String? gender;
  String? hairColor;
  String? skinColor;
  String? image;
  double? height;
  double? mass;
  String url;

  IsarCharacterModel(
      {required this.id,
      required this.birthYear,
      required this.eyeColor,
      required this.gender,
      required this.hairColor,
      required this.name,
      required this.skinColor,
      required this.url,
      this.height,
      this.image,
      this.mass});

  factory IsarCharacterModel.fromCharacterModel(CharacterModel character) {
    return IsarCharacterModel(
      id: character.id,
      name: character.name,
      birthYear: character.birthYear,
      eyeColor: character.eyeColor,
      gender: character.gender,
      hairColor: character.hairColor,
      skinColor: character.skinColor,
      height: character.height,
      mass: character.mass,
      image: character.image,
      url: character.url,
    );
  }

    factory IsarCharacterModel.fromJson(Map<String, dynamic> json) => IsarCharacterModel(
        id: json["id"].toString(),
        name: json["name"],
        birthYear: json["birthYear"],
        eyeColor: json["eyeColor"],
        gender: json["gender"],
        hairColor: json["hairColor"],
        skinColor: json["skinColor"],
        height: json["height"] is int ? json["height"].toDouble() : json["height"],
        mass: json["mass"] is int ? json["mass"].toDouble() : json["mass"],
        image: json["image"],
        url: json["url"]??"",
      );

}
