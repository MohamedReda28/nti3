import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nti3/features/auth/domine/entities/user_entity.dart';
import 'package:nti3/features/auth/domine/redo/auth_repo.dart';

part 'singup_state.dart';

class SingupCubit extends Cubit<SingupState> {
  SingupCubit(this.authRepo) : super(SingupInitial());
  final AuthRepo authRepo;


 Future<void> createUserWithEmailAndPassword({required String email,
      required String password,
      required String name})async{
        emit(SingupLoadin());

    var result= await authRepo.createUserWithEmailAndPassword(email: email, password: password, name: name);
    result.fold(
      (f)=> emit(SingupFaluir(f.errmassege)),
      (s)=>emit(SingupSuccess(s)),
      );
  }
}
