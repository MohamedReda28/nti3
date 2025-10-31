import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/uitel/App_TextStyle.dart';
import '../../../../../core/uitel/app_images.dart';



class ProdutviewResult extends StatelessWidget {
  const ProdutviewResult({super.key, required this.productleanth});
  final int productleanth;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$productleanthنتائج',
          style: AppStyle.bold16.copyWith(
            color: const Color(0xFF0C0D0D),
          ),
        ),
        SvgPicture.asset(Assets.imagesFilrting),
      ],
    );
  }
}
