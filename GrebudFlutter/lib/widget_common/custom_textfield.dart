import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grebudflutter/const/const.dart';

Widget customTextField({String? title, String? hint,controller})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
        title!.text.color(orange).fontFamily(bold).size(16).make(),
        5.heightBox,
        TextFormField(
      
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            fontFamily : regular,
            color : grey,
          ) ,
          isDense: true,
          fillColor: const Color.fromARGB(193, 223, 217, 217),
          filled: true,
          border : InputBorder.none, 
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color : orange)
          )
        ),
      ),
      5.heightBox,
      
    ],
  );
}