import 'package:dartz/dartz.dart';
import 'package:nti3/features/auth/domine/entities/user_entity.dart';

import '../../../../core/errors/faluir.dart';

abstract class AuthRepo{
  Future<Either<Faluir,UserEntity>>  createUserWithEmailAndPassword( 
  {required String email, required String password, required String name});
  Future<Either<Faluir, UserEntity>> signinUserWithEmailAndPassword(
      {required String email, required String password});

 Future<void> addUserData({required UserEntity userEntity});
  Future<UserEntity> getUserData({required String uID});

 Future saveUserData({required UserEntity userEntity});

}