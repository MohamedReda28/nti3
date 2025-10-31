import 'package:flutter/material.dart';


class CustomDriverAndOr extends StatelessWidget {
  const CustomDriverAndOr({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: Divider(
          color: Color(0xFFDCDEDE),
        )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'أو',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF131E1F),
              fontSize: 16,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
              height: 1.40,
            ),
          ),
        ),
        Expanded(
            child: Divider(
          color: Color(0xFFDCDEDE),
        )),
      ],
    );
  }
}
