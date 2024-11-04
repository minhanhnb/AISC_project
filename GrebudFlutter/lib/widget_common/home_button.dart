import 'package:flutter/material.dart';
import 'package:grebudflutter/const/const.dart';
Widget homeButtons({width,height, icon, String? title,onPress})
{
  return Column(
    mainAxisAlignment : MainAxisAlignment.center,
    children: [
    Image.asset(icon, width : 60),
    10.heightBox,
    title!.text.fontFamily(bold).color(darkGreen).make()
    ],
  ).box.rounded.white.size(width, height).shadowSm.make();
}