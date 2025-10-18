import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DontHaveAccountWidgh extends StatelessWidget {
  const DontHaveAccountWidgh(
      {super.key,
      required this.textone,
      required this.texttwo,
      required this.ontap});
  final String textone, texttwo;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textone,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xFF949D9E),
          ),
        ),
        GestureDetector(
          onTap: ontap,
          child: Text(
            texttwo,
            style:const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color(0xFF1B5E37),
            )
          ),
        ),
      ],
    );
  }
}
