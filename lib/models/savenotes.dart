// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';
part 'savenotes.g.dart';

@HiveType(typeId: 0)
class SaveNote {
  @HiveField(0)
  String title;

  @HiveField(1)
  String description;

  SaveNote({
    required this.title,
    required this.description,
  });
}
