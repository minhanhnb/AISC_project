import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grebudflutter/view/auth_screen/sign_up.screen.dart';
import 'package:grebudflutter/view/home_screen/home_screen.dart';
//import 'package:grebudflutter/main.dart';
import 'package:grebudflutter/widget_common/log_widget.dart';
import 'package:grebudflutter/widget_common/applogo_widget.dart';
import 'package:grebudflutter/widget_common/custom_textfield.dart';
import 'package:grebudflutter/const/const.dart';
import 'package:grebudflutter/widget_common/our_button.dart';
import 'package:get/get.dart';
  // Import VelocityX nếu cần


//StatelessWidget là giao diện không thay đổi
class LoginScreen extends StatelessWidget{
  const LoginScreen({Key? key}) : super(key: key);
  //Constructor khởi tạo, chỉ ra đucojw khởi tạo với giá trị không đổi
  // key là một tham số tùy chọn, giúp phân biệt
  //super.. gọi constructor của lớp cha và truyền key

  @override
  Widget build(BuildContext context) {
    //Định nghĩa giao diện cho widget

    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body : SingleChildScrollView(
        child : Center(
        child: Column(
          children : [
            (context.screenHeight * 0.1).heightBox, 
            applogoWidget(),
            10.heightBox,
            "Đăng nhập vào $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,

            Column(
              children: [
                customTextField(hint: "Nhập vào email của bạn", title : "Email"),
                customTextField(hint:"Nhập vào mật khẩu", title :"Mật khẩu"),
                Align (
                  alignment: Alignment.centerRight,
                  child : TextButton(onPressed: (){} ,
                  child: forgetPass.text.make())),
                  5.heightBox,


                  ourButton(color: darkGreen, title : "Đăng nhập", textColor: whiteColor, onPress: (){
                    Get.to(()=> const HomeScreen());
                  })
                    .box
                    .width(context.screenWidth -50)
                    .make(),



                  10.heightBox,
                  "Chưa có tài khoản ? Tạo mới tài khoản tại đây".text.color(grey).make(),

                  5.heightBox,
                  ourButton(color:lightGreen, title: "Đăng ký", textColor : darkGreen,onPress: (){
                    Get.to(()=> const SignupScreen());
                  })
                    .box
                    .width(context.screenWidth -50)
                    .make(),

                  "Đăng nhập với".text.color(grey).make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center ,
                    children: List
                    .generate(1,
                              (index)=>CircleAvatar(
                                 // backgroundColor: const Color.fromARGB(193, 255, 255, 255),
                                         radius: 35,
                                         child: SvgPicture.asset(
                                          socialIconlist[index],
                                          width:30,
                                          
                                          ),
                                          
                                     )),
                    )






              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make(),
           "Đăng nhập với tư cách người bán".text.color(grey).make(),
          ]
        )
        )
      ),

    ));
    //Scaffold là widget quan trọng, thường
    //method build sẽ trả về widget
    // TODO: implement build
    
  }
}