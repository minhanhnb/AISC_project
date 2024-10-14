import 'package:flutter/material.dart';
//import 'package:grebudflutter/const/const.dart';
import 'package:grebudflutter/const/images.dart';

Widget bgWidget({required Widget child}) {
  return Container(
    decoration: const BoxDecoration(
       color: const Color.fromARGB(244, 9, 244, 32), // bao quanh logo màu nền 
    ),
    child: child, // Widget con
  );
}
