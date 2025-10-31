
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/help_function/build_snackbar.dart';
import '../../../../../core/widgets/Custom_Botton.dart';
import '../../../../../core/widgets/custom_text_form_filed.dart';
import '../../mangment/cubit/singup_cubit.dart';
import 'Dont Have Account Widgh.dart';
import 'Terms And Condetion.dart';

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
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              CustomTextFormFiled(
                onsaved: (value) {
                  name = value!;
                },
                title: 'الاسم كامل',
               isSuffex: false,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormFiled(
                onsaved: (value) {
                  email = value!;
                },
                title: ' البريد الإلكتروني',
                isSuffex: false,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormFiled(
                onsaved: (value) {
                  password = value!;
                },
                title: 'ككلمه المررور',
                isSuffex: true,
              ),
              const SizedBox(
                height: 16,
              ),
              TermsAndCondetion(
                changed: (value) {
                  change = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomBottom(
                title: 'إنشاء حساب جديد',
                ontap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    if (change) {
                      context.read<SingupCubit>().createUserWithEmailAndPassword(
                          name: name, email: email, password: password);
                    } else {
                      BuildSnakBar(context, 'يجب الموافقه علي الشروط والاحكام');
                    }
                  } else {
                    setState(() {
                      autoValidateMode = AutovalidateMode.always;
                    });
                  }
                },
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
