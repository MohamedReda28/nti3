import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomLoginBy extends StatelessWidget {
  const CustomLoginBy(
      {super.key,
      required this.title,
      required this.image,
      required this.ontap});
  final String title, image;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 343,
        height: 56,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFDCDEDE)),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SvgPicture.asset(image),
            ),
            const SizedBox(
              width: 40,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF0C0D0D) /* Grayscale-950 */,
                fontSize: 16,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600,
                height: 1.40,
              ),
                ),

          ],
        ),
      ),
    );
  }
}
