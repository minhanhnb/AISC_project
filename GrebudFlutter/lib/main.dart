import 'package:flutter/material.dart';
import 'package:grebudflutter/view/splash_screen/splash_screen.dart';
import 'const/const.dart';
import 'package:get/get.dart';  // Thêm dòng này để import GetX

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // We are using getX so we have to change this material app into getmaterialapp 
    return GetMaterialApp(
      title: "GREBUD",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme:  const AppBarTheme( backgroundColor: Colors.transparent),
        fontFamily: regular,

      ),
      home: const SplashScreen(),
    );
  }
}