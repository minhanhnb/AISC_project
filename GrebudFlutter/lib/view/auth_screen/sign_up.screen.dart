
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:grebudflutter/const/const.dart';
import 'package:grebudflutter/widget_common/applogo_widget.dart';
import 'package:grebudflutter/widget_common/log_widget.dart';
import 'package:grebudflutter/widget_common/our_button.dart';
import '../../widget_common/custom_textfield.dart';

class SignupScreen extends StatefulWidget{
  const SignupScreen({Key? key}) : super(key : key);

  @override 
  SignupScreenState createState() =>SignupScreenState();
}

class SignupScreenState extends State<SignupScreen>
{
  bool? isCheck=false;
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
            "Tham gia vào $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,

            Column(
              children: [
                customTextField(hint: "Nhập tên đăng nhập", title : "Tên đăng nhập"),
                customTextField(hint: "Nhập số điện thoại", title : "Số điện thoại"),
                customTextField(hint:"Nhập vào mật khẩu", title :"Mật khẩu"),
                customTextField(hint:"Nhập lại mật khẩu", title :"Xác nhận mật khẩu"),
                // Align (
                //   alignment: Alignment.centerRight,
                //   child : TextButton(onPressed: (){} ,
                //   child: forgetPass.text.make())),
                  5.heightBox,
  
                  Row(children: [
                    Checkbox(
                      activeColor: redColor,
                     checkColor: whiteColor,
                     value: isCheck,
                     onChanged: (newValue){
                      setState(() {
                         isCheck = newValue;
                      });
                     
                     },
                    ),
                    10.widthBox,
                    Expanded(
                    child: RichText(text: TextSpan(
                      children : 
                      [
                        TextSpan(text:"Tôi đồng ý với "
                        ,style : TextStyle(
                          fontFamily : regular, 
                          color : grey, 


                        )),
                         TextSpan(text: termandCondition 
                         ,style : TextStyle(
                          fontFamily : regular, 
                          color : darkGreen, 
                        )),
      
                         TextSpan(text:"&"
                         ,style : TextStyle(
                          fontFamily : regular, 
                          color : darkGreen, 
                        )),
                         TextSpan(text: privacyPolicy,style : TextStyle(
                          fontFamily : regular, 
                          color : darkGreen, 
                        )),
                          ]
                    )),
                    ),
                  ],
                  ),


                   ourButton(color: isCheck ==true?  darkGreen : lightGrey, title : "Đăng ký", textColor: whiteColor, onPress: (){})
                    .box
                    .width(context.screenWidth -50)
                    .make(),
                  
                  10.heightBox,
                  //Wrapping into gesture detector of velocity X
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        "Đã có tài khoản?".text.color(lightGrey).make(),
                        "Đăng nhập tại đây".text.color(darkGreen).make().onTap((){
                          Get.back();


                        }),
                      ]
                  ),
  
              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make()
          ] 
        )
        )
      ),

    ));
}
}

