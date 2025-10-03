import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder(),
          fillColor: const Color(0xFFF9FAFA),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          //hintText: 'البريد الإلكتروني',
          label: Text(
            'البريد الإلكتروني',
        
        ),
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
