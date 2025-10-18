import 'package:flutter/material.dart';
import 'package:nti3/core/widgets/Custom_Botton.dart';

import '../../../../../core/widgets/custom_text_form_filed.dart';
import 'Dont Have Account Widgh.dart';



class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  late String email, password, name;
  late bool change = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormFiled(
                title:'الاسم بالكامل',
                isSuffex: false,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormFiled(
                title: 'البريد الإلكتروني',
                isSuffex: false,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormFiled(
                title: 'كلمه المرور',
                isSuffex: true,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomBottom(
                title: 'إنشاء حساب جديد',
              ),
              const SizedBox(
                height: 26,
              ),
              DontHaveAccountWidgh(
                textone: 'تمتلك حساب بالفعل؟',
                texttwo: 'قم بتسجيل الدخول',
                ontap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
