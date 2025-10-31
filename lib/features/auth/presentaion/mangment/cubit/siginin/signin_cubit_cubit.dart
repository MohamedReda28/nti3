import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

import '../../../../domine/entities/user_entity.dart';
import '../../../../domine/redo/auth_repo.dart';

part 'signin_cubit_state.dart';

class SigninCubit extends Cubit<SigninCubitState> {
  SigninCubit(this.authRepo) : super(SigninCubitInitial());

  AuthRepo authRepo;

  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    emit(SigninCubitLoading());
    var result = await authRepo.signinUserWithEmailAndPassword(
        email: email, password: password);
    result.fold((faluir) => emit(SigninCubitFaluir(faluir.errmassege)),
        (userEntity) => emit(SigninCubitSuccess(userEntity)));
  }
}
