import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nti3/features/auth/data/repo/auth_repo_imple.dart';
import 'package:nti3/features/auth/domine/redo/auth_repo.dart';
import 'package:nti3/features/auth/presentaion/mangment/cubit/singup_cubit.dart';
import 'package:nti3/features/auth/presentaion/veiw/widgets/SignupViewBody.dart';
import '../../../../core/help_function/build_snackbar.dart';
import '../../../../core/servese/gitit.dart';
import '../../../../core/widgets/build_app_par.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'SignUp';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SingupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: bluidAppBar(title: 'حساب جديد'),
        body: BlocConsumer<SingupCubit, SingupState>(
          listener: (context, state) {
            if (state is SingupSuccess) {
              return BuildSnakBar(context, 'تم انشاء حساب');
            }
            if (state is SingupFaluir) {
              return BuildSnakBar(context, state.errmassege);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is SingupLoadin,
              child: const SignupViewBody(),
            );
          },
        ),
      ),
    );
  }
}
