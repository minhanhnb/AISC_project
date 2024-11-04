import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grebudflutter/const/const.dart';
import 'package:grebudflutter/controllers/home_controller.dart';
import 'package:grebudflutter/view/home_screen/home_screen.dart';
import 'package:grebudflutter/view/livestream_screen/livestream_screen.dart';
import 'package:grebudflutter/view/notification_screen/noti_screen.dart';
import 'package:grebudflutter/view/profile_screen/profile_screen.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
      final List<String> iconPaths = [
      icHome,     // icon cho Home
      icLive,     // icon cho Live
      icNoti,     // icon cho Noti
      icAccount,  // icon cho Account
    ];

    final List<String> selectedIconPaths = [
      icHomeSelected,     // icon được chọn cho Home
      icLiveSelected,     // icon được chọn cho Live
      icNotiSelected,     // icon được chọn cho Noti
      icAccountSelected,  // icon được chọn cho Account
    ];


    //init home controller
    var controller= Get.put(HomeController());
    var navbarItem=[
      BottomNavigationBarItem(icon: Image.asset(icHome, width : 26),
      label: home ),
      BottomNavigationBarItem(icon: Image.asset(icLive, width : 26),
      label: livestream ),
      BottomNavigationBarItem(icon: Image.asset(icNoti, width : 26),
      label: noti ),
      BottomNavigationBarItem(icon: Image.asset(icAccount, width : 26),
      label: account ),
    ];

    var navBody=[
      const HomeScreen(),
      const LivestreamScreen(),
      const NotiScreen(),
      const ProfileScreen(),

    ];
    return Scaffold(
      body: Obx(()=>navBody[controller.currentNavIndex.value]), // Hiển thị body tương ứng với index),
      bottomNavigationBar: Obx(
        ()=> BottomNavigationBar(
        currentIndex: controller.currentNavIndex.value ,
        selectedItemColor: orange,
        selectedLabelStyle: const TextStyle(fontFamily: bold),
        backgroundColor : white,
        type : BottomNavigationBarType.fixed,
        elevation: 0.0,  // Thêm dòng này để loại bỏ bóng
        items:  List.generate(4, (index) {
            return BottomNavigationBarItem(
              icon: Image.asset(
                controller.currentNavIndex.value == index ? selectedIconPaths[index] : iconPaths[index],
                width: 26,
              ),
              label: index == 0
                  ? home
                  : index == 1
                      ? livestream
                      : index == 2
                          ? noti
                          : account,
            );
          }),
        onTap :(value){
          controller.currentNavIndex.value=value;

        }
        ),
      ),
    );
    // TODO: implement build

  }
}