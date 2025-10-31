import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/help_function/getUserData.dart';
import '../../../../../core/uitel/App_TextStyle.dart';
import '../../../../../core/uitel/app_images.dart';


class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('صباح الخير !..',
          style: AppStyle.regular16.copyWith(
            color: const Color(0xFF949D9E),
          )),
      subtitle:  Text(
       getUser().name,
        style: AppStyle.bold16,
      ),
      leading: Image.asset(Assets.imagesAvatar),
      trailing: Container(
        width: 34,
        height: 34,
        decoration: const ShapeDecoration(
          color: Color(0xFFEEF8ED),
          shape: OvalBorder(),
        ),
        child: Center(child: SvgPicture.asset(Assets.imagesNotification)),
      ),
    );
  }
}
