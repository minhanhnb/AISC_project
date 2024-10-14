import 'package:flutter/cupertino.dart';
import 'package:grebudflutter/const/const.dart';
//import 'package:grebudflutter/const/images.dart';


Widget applogoWidget() {
  return Container(
    padding: const EdgeInsets.all(12), // Khoảng cách bên trong
    decoration: BoxDecoration(
      //color: const Color.fromARGB(244, 9, 244, 32), // bao quanh logo màu nền 
      borderRadius: BorderRadius.circular(12), // Bo góc
    ),
    child: Image.asset(imAppLogo), // Hình ảnh logo
  ).box.rounded.make(); // Bo tròn
}