import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget{
   CustomBottom({super.key,required this.title});
   String title;

  @override
  Widget build(BuildContext context) {

   return Center(
            child: Container(
              width: 343,
              height: 54,
              decoration: ShapeDecoration(
                color: const Color(0xFF1B5E37) /* Green1-500 */,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child:  Center(
                child: Text(
                title ,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          );
  }

}