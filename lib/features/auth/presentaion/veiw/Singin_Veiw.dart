import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nti3/core/widgets/build_app_par.dart';
import 'package:nti3/features/auth/presentaion/veiw/widgets/singinviewBody.dart';

import '../../../../core/help_function/build_snackbar.dart';
import '../../../../core/servese/gitit.dart';
import '../../../Home/peresntation/views/mainView.dart';
import '../../domine/redo/auth_repo.dart';
import '../mangment/cubit/siginin/signin_cubit_cubit.dart';

class SinginVeiw extends StatelessWidget {
  const SinginVeiw({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt<AuthRepo>()),
      child: Scaffold(
      appBar: bluidAppBar(
        title: 'تسجيل دخول',
      ),
      body: const SiginVeiwBodyBlocConsumer()
      ),
    );
  }
}
class SiginVeiwBodyBlocConsumer extends StatelessWidget {
  const SiginVeiwBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninCubitState>(
      listener: (context, state) {
        if (state is SigninCubitSuccess) {
          BuildSnakBar(context, 'تم تسجيل الدخول');
         Navigator.push(context, MaterialPageRoute(builder: (context)=>const MainView()));
        }
        if (state is SigninCubitFaluir) {
          BuildSnakBar(context, state.errMassege);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SigninCubitLoading,
          child:  SinginVeiwBody(),
        );
      },
    );
  }
}
