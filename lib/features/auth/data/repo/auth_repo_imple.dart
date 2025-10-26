import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nti3/core/errors/customExceptin.dart';
import 'package:nti3/core/errors/faluir.dart';
import 'package:nti3/core/servese/AuthServes.dart';
import 'package:nti3/features/auth/data/models/user_model.dart';
import 'package:nti3/features/auth/domine/entities/user_entity.dart';
import 'package:nti3/features/auth/domine/redo/auth_repo.dart';

class AuthRepoImple extends AuthRepo {
  AuthRepoImple( this.authServes);
  AuthServes authServes;
  @override
  Future<Either<Faluir,UserEntity>> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    
      try{
        var user = await authServes.createUserWithEmailAndPassword(
          email: email, password: password);
      UserModel userModel = UserModel.fromfirebaseuser(user);
      UserEntity userEntity = userModel.toEntity();
      return right(userEntity);
      } on CustomException catch(e){

     return left(FirebaseError(errmassege:e.massage ));

      }catch(e){

       return left(FirebaseError(errmassege:"حدث خكأ حاول لاحقا"));

      }
    
}
}
