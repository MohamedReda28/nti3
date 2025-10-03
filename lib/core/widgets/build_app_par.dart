 import 'package:flutter/material.dart';

AppBar bluidAppBar({required String title}){
    return AppBar(
       leading:Icon(Icons.arrow_back_ios,),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
    );
    
   }