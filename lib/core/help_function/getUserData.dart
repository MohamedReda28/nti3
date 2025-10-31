import 'package:hive/hive.dart';
import 'package:nti3/features/auth/domine/entities/user_entity.dart';

UserEntity getUser() {


 final  userBox = Hive.box<UserEntity>('users');

return userBox.get('user')!;
}
