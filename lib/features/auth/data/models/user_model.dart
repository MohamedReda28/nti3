import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:nti3/features/auth/domine/entities/user_entity.dart';

class UserModel {
  final String name;
  final String email;
  final String uID;

  UserModel({required this.name, required this.email, required this.uID});

  factory UserModel.fromfirebaseuser(User user) {
    return UserModel(
        name: user. displayName?? '', email: user.email ?? '', uID: user.uid);
  }

  UserEntity toEntity(){

    return UserEntity(name: name, email: email, uID: uID);

   }

  

}