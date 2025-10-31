import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthServes{

  Future<User> createUserWithEmailAndPassword({
    required String email,required String password});
  Future<User> signInWithEmailAndPassword(
      {required String email, required String password});

}