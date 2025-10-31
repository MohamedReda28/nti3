import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:nti3/core/errors/customExceptin.dart';
import 'package:nti3/core/errors/faluir.dart';
import 'package:nti3/core/servese/AuthServes.dart';
import 'package:nti3/core/servese/bataBaseerves.dart';
import 'package:nti3/features/auth/data/models/user_model.dart';
import 'package:nti3/features/auth/domine/entities/user_entity.dart';
import 'package:nti3/features/auth/domine/redo/auth_repo.dart';

import '../../domine/entities/user_entity.dart';

class AuthRepoImple extends AuthRepo {
  AuthRepoImple(this.authServes,this.dataBAseSevese);
  AuthServes authServes;
  DataBAseSevese dataBAseSevese;
  @override
  Future<Either<Faluir, UserEntity>> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    try {

      var user = await authServes.createUserWithEmailAndPassword(
          email: email, password: password);
      UserModel userModel = UserModel.fromfirebaseuser(user);
      UserEntity userEntity = userModel.toEntity();


      UserEntity userEntityForSave = UserEntity(name: name, email: email, uID: user.uid);
      await addUserData(userEntity: userEntityForSave);
     
      return right(userEntity);
    } on CustomException catch (e) {
      return left(FirebaseError(errmassege: e.massage));
    } catch (e) {
      return left(FirebaseError(errmassege: "حدث خكأ حاول لاحقا"));
    }
  }

  @override
  Future<Either<Faluir, UserEntity>> signinUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      var user = await authServes.signInWithEmailAndPassword(
          email: email, password: password);
      // UserModel userModel = UserModel.fromfirebaseuser(user);
      // UserEntity userEntity = userModel.toEntity();
      var userEntity = await getUserData(uID: user.uid);
     await saveUserData(userEntity: userEntity);

      return right(userEntity);
    } on CustomException catch (e) {
      return left(FirebaseError(errmassege: e.massage));
    }
  }
  
  @override
  Future<void> addUserData({required UserEntity userEntity})async{

    dataBAseSevese.addData(
      path: 'users',
       data: UserModel.fromEntity(userEntity).toMap(),
       dID : userEntity.uID,
       );

     
    
  }
  @override
  Future<UserEntity> getUserData({required String uID}) async {
    var data = await dataBAseSevese.getData(
      path:'users',
      docId: uID,
    ) as Map<String, dynamic>;
    UserModel userModel = UserModel.fromJson(data);
    UserEntity userEntity = userModel.toEntity();
    return userEntity;
  }
  
  @override
  Future saveUserData({required UserEntity userEntity})async {
  //  final userBox = Hive.box<UserEntity>(kUserBox);
  //   await userBox.put(kUserdoc, user);

    final userBox = Hive.box<UserEntity>('user');
    await userBox.put('user', userEntity);
  }

}
