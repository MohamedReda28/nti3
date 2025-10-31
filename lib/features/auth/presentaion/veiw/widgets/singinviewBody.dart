import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti3/core/widgets/custom_text_form_filed.dart';
import '../../../../../core/widgets/Custom_Botton.dart';
import '../../mangment/cubit/siginin/signin_cubit_cubit.dart';
import '../SignupView.dart';
import 'Custom Driver And Text.dart';
import 'Dont Have Account Widgh.dart';
import 'SocailLogin By.dart';

class SinginVeiwBody extends StatefulWidget {
  @override
  State<SinginVeiwBody> createState() => _SinginVeiwBodyState();
}

class _SinginVeiwBodyState extends State<SinginVeiwBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  late String email, password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextFormFiled(
                onsaved: (value) {
                  email = value!;
                },
                title: 'البريد الإلكتروني',
              isSuffex: false,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormFiled(
                onsaved: (value) {
                  password = value!;
                },
                title: 'كلمه المرور',
                isSuffex: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      //Navigator.pushReplacementNamed(context, ForgetpassView.routeName);
                    },
                    child: const Text(
                      'نسيت كلمة المرور؟',
                      style:TextStyle(
                        color: Color(0xFF2D9F5D) /* Green1-600 */,
                        fontSize: 13,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w600,
                        height: 1.70,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              Center(
                child: CustomBottom(
                  title: 'تسجيل دخول',
                  ontap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context.read<SigninCubit>().signInWithEmailAndPassword(
                          email: email, password: password);
                    } else {
                      setState(() {
                        autoValidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              DontHaveAccountWidgh(
                textone: 'لا تمتلك حساب؟',
                texttwo: 'قم نانشاء حساب',
                ontap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpView()));
                },
              ),
              const SizedBox(
                height: 33,
              ),
              const CustomDriverAndOr(),
              const SizedBox(
                height: 16,
              ),
              CustomLoginBy(
                ontap: () {},
                title: 'تسجيل بواسطة جوجل',
                image: 'assets/Social Icons.svg',
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
