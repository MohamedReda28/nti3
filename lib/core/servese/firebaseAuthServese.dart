import 'package:firebase_auth/firebase_auth.dart';
import 'package:nti3/core/servese/AuthServes.dart';
import '../errors/customExceptin.dart';
class FireBAseAuthServes extends AuthServes{
  @override
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return credential.user!;
    } on FirebaseAuthException catch (e) {

      if (e.code == 'weak-password') {
        throw CustomException(massage: 'كلمه المرور ضعيفه');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(massage: 'الايميل موجود');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(massage: 'قم بالاتصال بالانترنت');
      } else {
        throw CustomException(massage: 'حدث خطأ حاول لاحقا');
      }
    } catch (e) {

      throw CustomException(massage: 'حدث خطأ حاول لاحقا');
    }
  }

}