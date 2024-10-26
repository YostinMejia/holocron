class CharacterModel {
  String id;
  String? birthYear;
  String? eyeColor;
  String? gender;
  String? hairColor;
  String name;
  String? skinColor;
  String? image;
  double? height;
  double? mass;
  String url;

  CharacterModel({
    required this.id,
    required this.birthYear,
    required this.eyeColor,
    required this.gender,
    required this.hairColor,
    required this.name,
    required this.skinColor,
    required this.url,
    this.height,
    this.image,
    this.mass
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) => CharacterModel(
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

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "birthYear": birthYear,
        "eyeColor": eyeColor,
        "gender": gender,
        "hairColor": hairColor,
        "skinColor": skinColor,
        "height": height,
        "mass": mass,
        "image": image,
        "url": url
      };
}
