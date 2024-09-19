class UserModel{
  final String id;
  final String name;
  final List<String> favoritesNames;

  UserModel({required this.id, required this.name,required this.favoritesNames });

  void addFavorite(String name){
    favoritesNames.add(name.toLowerCase());
  }

  void deleteFavorite(String name){
    favoritesNames.removeWhere((personName)=>personName==name);
  }

}