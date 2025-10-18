import 'package:flutter/material.dart';
import 'package:nti3/core/widgets/custom_text_form_filed.dart';
import 'package:nti3/features/auth/presentaion/veiw/widgets/donthaveacount.dart';
import 'package:nti3/features/auth/presentaion/veiw/widgets/forgetPass.dart';
import 'package:nti3/features/auth/presentaion/veiw/widgets/singinwithgoogle.dart';

import '../../../../../core/widgets/custom_botton.dart';

class SinginVeiwBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          const CustomTextFormFiled(
            title: 'البريد الإلكتروني',
            isSuffex: false,
          ),
          const SizedBox(
            height: 4,
          ),
          const CustomTextFormFiled(
            title: 'كلمة المرور',
            isSuffex: true,
          ),
          const SizedBox(
            height: 4,
          ),
           ForgetPass(),
          const SizedBox(
            height: 33,
          ),
          CustomBottom(
            title: 'تسجيل دخول',
          ),
          const SizedBox(
            height: 33,
          ),
          DontHaveAccount(),
          SinginWithGoogle(),
         
        ]),
      );
  }

 }

