import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController {
  /*
  * have a list of the items for the bottom navigation
  * 5 items
  *
  * introduce a new variable of type OBX (int)
  * assigning the variable a value from the bottomNavItems index
  * have a condition using currentIndex to change the
  * position of the bottomNavItems and the body
  *
  * introduce a function / widget that uses switch case to display the widgets
  * based on the currentIndex
  * */

  List bottomNavItems = [
    {
      "title":"Explore",
      "icon":Icons.explore
    },
    {
      "title":"Cloud",
      "icon":Icons.cloud_queue
    },
    {
      "title":"Leaf",
      "icon":Icons.energy_savings_leaf_outlined
    },
    {
      "title":"Favorites",
      "icon":Icons.favorite_border
    },
    {
      "title":"Profile",
      "icon":Icons.account_circle_outlined
    },
  ];

  RxInt currentIndex = 0.obs;
  PageController? c;


  HomeController(){
    c= PageController(
      initialPage: currentIndex.value
    );
  }

  Widget bottomNavBodyWidget (){
    switch (currentIndex.value){
      case 0:
        return Container(
          width: Get.width,
          height: Get.height,
          color: Colors.black,
        );
      case 1:
        return Container(
          width: Get.width,
          height: Get.height,
          color: Colors.red,
        );
      case 2:
        return Container(
          width: Get.width,
          height: Get.height,
          color: Colors.orange,
        );
      case 3:
        return Container(
          width: Get.width,
          height: Get.height,
          color: Colors.blue,
        );

      case 4:
        return Container(
          width: Get.width,
          height: Get.height,
          color: Colors.purple,
        );

      default:
        return SizedBox();
    }
  }
}