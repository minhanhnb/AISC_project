import 'package:flutter/material.dart';
import 'package:grebudflutter/const/const.dart';
// Tạo format chung cho những button sử dụng trong app
Widget ourButton({onPress, color, textColor, required String title})
{
  return ElevatedButton(
    style : ElevatedButton.styleFrom(
      backgroundColor: color,
      padding : EdgeInsets.all(12),

    ),
    onPressed: onPress,
    child : title.text.color(textColor).fontFamily(bold).make(),
    );

}