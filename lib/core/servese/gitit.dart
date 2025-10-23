import 'package:get_it/get_it.dart';
import 'package:nti3/core/servese/AuthServes.dart';
import 'package:nti3/core/servese/firebaseAuthServese.dart';
import 'package:nti3/features/auth/data/repo/auth_repo_imple.dart';
import 'package:nti3/features/auth/domine/redo/auth_repo.dart';

final getIt = GetIt.instance;

void gititsetup() {


 getIt.registerSingleton<AuthRepo>(AuthRepoImple(FireBAseAuthServes()));

 
  
}
