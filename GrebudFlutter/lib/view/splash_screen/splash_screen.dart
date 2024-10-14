
import 'package:flutter/material.dart';
import 'package:grebudflutter/const/const.dart';
import 'package:grebudflutter/widget_common/applogo_widget.dart';
import 'package:grebudflutter/view/auth_screen/login_screen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>{

  //Create a method to change screen
  changeScreen()
  {
    Future.delayed(Duration(seconds : 3),(){
      //using getX
      Get.to(() => const LoginScreen());

    });
  }

  @override
  void initState()
  {
    changeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: lightGreen,
      body: Center(
        child: Column(
          children: [
            applogoWidget(),
          ],
        ),
      )
    );
  }
}