class PersonModel {
  String id;
  String? birthYear;
  String? eyeColor;
  String? gender;
  String? hairColor;
  String? name;
  String? skinColor;
  String? image;
  double? height;
  double? mass;

  PersonModel({
    required this.id,
    required this.birthYear,
    required this.eyeColor,
    required this.gender,
    required this.hairColor,
    required this.name,
    required this.skinColor,
    this.height,
    this.image,
    this.mass,
  });

  factory PersonModel.fromJson(Map<String, dynamic> json) => PersonModel(
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
      };
}
