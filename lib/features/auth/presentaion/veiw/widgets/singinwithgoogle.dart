import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SinginWithGoogle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
            width: 343,
            height: 56,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1,
                  color: Color(0xFFDCDEDE),
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child:  Row(
              children: [
                SvgPicture.asset('assets/Social Icons.svg'),
               Spacer(),
               const Text(
                  'تسجيل بواسطة جوجل',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF0C0D0D) /* Grayscale-950 */,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          );
  }

}
