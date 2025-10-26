import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti3/core/widgets/Custom_Botton.dart';
import 'package:nti3/features/auth/presentaion/mangment/cubit/singup_cubit.dart';
import 'package:nti3/features/auth/presentaion/veiw/SignupView.dart';
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
  //late String email, password, name;

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
              CustomTextFormFiled(
                onsaved: (val) {
                 // name = val!;
                },
                title: 'الاسم بالكامل',
                isSuffex: false,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormFiled(
                onsaved: (val) {
                 // email = val!;
                },
                title: 'البريد الإلكتروني',
                isSuffex: false,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormFiled(
                onsaved: (val) {
                  //password = val!;
                },
                title: 'كلمه المرور',
                isSuffex: true,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomBottom(
                ontap: () {
                  context.read<SingupCubit>().createUserWithEmailAndPassword(
                      email: 'moahmed123@gmail.com',
                      password: '123456789',
                      name: 'mohamed');
                },
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
