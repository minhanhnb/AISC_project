import 'package:flutter/material.dart';
import 'package:grebudflutter/const/const.dart';
import 'package:grebudflutter/view/cart_screen/cart_screen.dart';
import 'package:grebudflutter/view/message_screen/message_screen.dart';
import 'package:grebudflutter/widget_common/home_button.dart';
import'package:velocity_x/src/flutter/swiper.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
        child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: darkGreen,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // TextFormField expanded to fill available space
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Tìm các sản phẩm ở đây",
                        hintStyle: TextStyle(color: lightGrey),
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Icon for Cart
                  IconButton(
                    icon: const Icon(Icons.shopping_cart, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CartScreen(),
                        ),
                      );
                    },
                  ),
                  // Icon for Message
                  IconButton(
                    icon: const Icon(Icons.message, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MessageScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 10), // Tạo khoảng cách phía trên 10 pixels
              child: VxSwiper.builder(
                aspectRatio: 16 / 9,
                autoPlay: true,
                height: 150,
                enlargeCenterPage: true,
                itemCount: advertiseList.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    advertiseList[index],
                    fit: BoxFit.fill,
                  ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                },
              ),
            ),
            10.heightBox,
            Row(
              mainAxisAlignment : MainAxisAlignment.spaceEvenly,
              children: List.generate(2,(index)=>homeButtons(
              height : context.screenHeight*0.15,
              width : context.screenWidth/2.5,
              icon : index == 0? icSale : icDeal,
              title : index == 0 ? "Tươi mới" :  "Hư thối",



            )),
            ),


          10.heightBox,
          Padding(
            padding: const EdgeInsets.all(10), // Thêm khoảng cách 10 pixels ở tất cả các cạnh
            child: Align(
              alignment: Alignment.centerLeft,
              child: "Sản phẩm mới đăng".text.color(orange).size(18).fontFamily(bold).make(),
            ),
          ),

          //All product section 
          20.heightBox,
          GridView.builder(
            physics: const NeverScrollableScrollPhysics() ,
            shrinkWrap : true, 
            itemCount : 6, 
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing:8 , crossAxisSpacing : 8, mainAxisExtent : 300), 
          itemBuilder:(context,index){
           
           return Column(
            crossAxisAlignment : CrossAxisAlignment.start,
            children: [
              Image.asset(
                imgDemo,
                width : 130, 
                fit : BoxFit.cover, 

              ),
              10.heightBox, 
              "Minh Anh iu gialinh".text.fontFamily(semibold).color(Colors.black).make(),
              10.heightBox,
              "\600 ngan".text.color(orange).fontFamily(bold).size(16).make(),
              10.heightBox,
            ],
           ).box.white.roundedSM.make();


            } )

          ],    
              ),
      ),
    ),
    );
  }
}
