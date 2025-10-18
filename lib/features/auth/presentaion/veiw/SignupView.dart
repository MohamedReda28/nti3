import 'package:flutter/material.dart';

import 'package:nti3/features/auth/presentaion/veiw/widgets/SignupViewBody.dart';

import '../../../../core/widgets/build_app_par.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'SignUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: bluidAppBar(title: 'حساب جديد'), body: const SignupViewBody());
  }
}
