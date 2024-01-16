import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicapp/controllers/home_controller.dart';
import 'package:musicapp/widgets/bottom_nav.dart';
import 'package:musicapp/widgets/text_widget.dart';

class PageTwo extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const TextWidget(
            value: 'Good',
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xff000000),
            textAlign: TextAlign.center),
        actions: [Icon(Icons.search)],
        bottom: PreferredSize(preferredSize: Size(Get.width, 20), child: const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: TextWidget(
                value: 'Morning',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
                textAlign: TextAlign.left),
          ),
        )),
      ),
      // bottomNavigationBar: SizedBox(
      //   width: Get.width,
      //     height: 100,
      //     child: BottomNavWidget()),
      // body: Obx(() => controller.bottomNavBodyWidget ()),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore,color: Colors.black,)
            ,label: "Explore",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.cloud,color: Colors.black),label: "Cloud",),
          BottomNavigationBarItem(icon: Icon(Icons.energy_savings_leaf,color: Colors.black),label: "Leaf"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: Colors.black),label: "Likes"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,color: Colors.black),label: "Account")
        ],
        onTap: (v){
          print(v);
          controller.currentIndex.value=v;
          if (controller.c != null) {
            controller.c!.jumpToPage(v);
          }
        },
      ),
      body: PageView(
        controller: controller.c,
        children: [
        Container(
        width: Get.width,
        height: Get.height,
        color: Colors.red,),
        Container(
        width: Get.width,
        height: Get.height,
        color: Colors.black,),
        Container(
        width: Get.width,
        height: Get.height,
        color: Colors.yellow,),
        ],
      ),
    );}

}