import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({super.key, required this.title, required this.isSuffex,required this.onsaved});
  final String title;

  final bool isSuffex;
  final  Function(String?) onsaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:isSuffex ,
      onSaved: onsaved,
      decoration: InputDecoration(
        
        focusedBorder: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        fillColor: const Color(0xFFF9FAFA),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        label: Text(
          title,
        ),
        
        suffixIcon: Visibility(
          visible: isSuffex,
          child:Icon(Icons.password_sharp),
          ),
    
       
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(
        width: 1,
        color: Color(0xFFE6E9E9),
      ),
    );
  }
}
