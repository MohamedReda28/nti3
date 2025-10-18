import 'package:flutter/material.dart';

import '../SignupView.dart';

class DontHaveAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SignUpView()));
      },
      child: const Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: ' لا تمتلك حساب؟',
              style: TextStyle(
                color: Color(0xFF949D9E) /* Grayscale-400 */,
                fontSize: 16,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600,
                height: 1.40,
              ),
            ),
            TextSpan(
              text: ' قم بانشاء حساب',
              style: TextStyle(
                color: Color(0xFF1B5E37) /* Green1-500 */,
                fontSize: 16,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600,
                height: 1.40,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
