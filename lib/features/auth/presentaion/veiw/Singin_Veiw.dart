import 'package:flutter/material.dart';
import 'package:nti3/core/widgets/build_app_par.dart';
import 'package:nti3/features/auth/presentaion/veiw/widgets/singinviewBody.dart';

class SinginVeiw extends StatelessWidget {
  const SinginVeiw({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bluidAppBar(
        title: 'تسجيل دخول',
      ),
      body: SinginVeiwBody()
    );
  }
}
 