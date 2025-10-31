import 'package:flutter/material.dart';

import '../../../../../core/uitel/App_TextStyle.dart';


class Custombestsalar extends StatelessWidget {
  const Custombestsalar({
    super.key,
    required this.ontap,
  });
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'الأكثر مبيعًا',
          style: AppStyle.bold16.copyWith(
            color: Color(0xFF0C0D0D),
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: ontap,
          child: Text(
            'المزيد',
            style: AppStyle.regular13.copyWith(
              color: const Color(0xFF949D9E),
            ),
          ),
        ),
      ],
    );
  }
}
