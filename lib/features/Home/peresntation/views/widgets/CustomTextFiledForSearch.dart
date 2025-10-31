import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/uitel/App_TextStyle.dart';
import '../../../../../core/uitel/app_images.dart';




class CustomTextFiledForSearch extends StatelessWidget {
  const CustomTextFiledForSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       // Navigator.pushNamed(context, Searchview.routeName);

        },
      child: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ]),
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              suffixIcon: SizedBox(
                  width: 20,
                  child: Center(child: SvgPicture.asset(Assets.imagesFilter))),
              prefixIcon: SizedBox(
                  width: 20,
                  child: Center(child: SvgPicture.asset(Assets.imagesSearch))),
              filled: true,
              fillColor: Colors.white,
              border: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(),
              enabledBorder: buildOutlineInputBorder(),
              hintText: 'ابحث عن.......',
              helperStyle: AppStyle.regular13.copyWith(
                color: const Color(0xFF949D9E),
              )),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.white,
      ),
    );
  }
}
