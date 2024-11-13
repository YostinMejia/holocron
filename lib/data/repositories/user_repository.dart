import 'package:star_wars/data/datasource/isar_datasource.dart';
import 'package:star_wars/data/models/isar_user_model.dart';
import 'package:star_wars/data/models/user_model.dart';

class UserRepository {

  IsarDatasource isarDatasource;
  UserRepository(this.isarDatasource);

  Future<void> createUser(UserModel user){
      return isarDatasource.saveUser(IsarUserModel.fromUserModel(user));
  }

  Future<IsarUserModel> getUser(String email)async{
    if (email.isEmpty){
      throw ArgumentError("Email cannot be empty");
    }
    IsarUserModel? user = await  isarDatasource.getUser(email);
    if (user == null) throw ArgumentError("Invalid email");
    return user;
  }
  

}