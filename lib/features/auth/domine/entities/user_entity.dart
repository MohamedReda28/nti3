import 'package:hive/hive.dart';
part"user_entity.g.dart";
@HiveType(typeId: 0)
class UserEntity extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String uID;

  UserEntity({required this.name, required this.email, required this.uID});
}
