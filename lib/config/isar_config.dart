import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:star_wars/data/models/isar_character_model.dart';
import 'package:star_wars/data/models/isar_user_model.dart';

Future<Isar> isarConnection() async {
  final dir = await getApplicationDocumentsDirectory();

  return Isar.open(
    schemas: [IsarUserModelSchema],
    directory: dir.path,
    
  );
}
