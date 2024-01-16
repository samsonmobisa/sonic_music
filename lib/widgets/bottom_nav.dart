import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:musicapp/widgets/text_widget.dart';

import '../controllers/home_controller.dart';
import 'button_widget.dart';

class BottomNavWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      widget: ListView.builder(
        itemCount: controller.bottomNavItems.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          var e = controller.bottomNavItems[index];
          return InkWell(
            child: Obx(() => Container(
              width: 75,
              decoration: BoxDecoration(
                  color: controller.currentIndex.value == index?Colors.green:Colors.transparent,
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(e['icon'] as IconData),
                    TextWidget(
                        value: e['title'].toString(),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            )),
            onTap: (){
              controller.currentIndex.value = index;
              print(controller.currentIndex.value);
            },
          );
        },
      ),
      color: const Color(0xffFFFFFF),
      radius: 15,
    );
  }
}
