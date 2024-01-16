import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:musicapp/widgets/button_widget.dart';
import 'package:musicapp/widgets/text_widget.dart';

class LoginUISample extends GetView {
  List listOfWidgets = [
    {
      "img": const SizedBox(),
      "title":"👋Welcome to Beamo",
      "color": Colors.white,
    },{
      "img": const Icon(Icons.mail),
      "title":"login with email",
      "color": Colors.white,
    },{
      "img": const Icon(Icons.account_box_outlined),
      "title":"login with Google",
      "color": Colors.white,
    },{
      "img": const Icon(Icons.facebook,color: Colors.white,),
      "title":"login with facebook",
      "color": Colors.blue,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextWidget(
            value: 'Sign in',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
            textAlign: TextAlign.center),
        actions: const [
          TextWidget(
              value: "SKIP FOR NOW",
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              textAlign: TextAlign.center),
        ],
        leading: const Icon(Icons.close),
        bottom: const PreferredSize(preferredSize: Size(30, 10), child:  Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: TextWidget(
                value: "CLOSE",
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                textAlign: TextAlign.center),
          ),
        ),),
      ),
      body: ListView.builder(
        itemCount: listOfWidgets.length,
        itemBuilder: (BuildContext context, int index) {
          var e = listOfWidgets[index];
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                ButtonWidget(
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      e['img'] as  Widget,
                      const SizedBox(width: 10),
                      TextWidget(
                          value: e['title'].toString(),
                          fontSize: index==0?18:13,
                          fontWeight: index==0?FontWeight.w500:FontWeight.w400,
                          color: index==0?const Color(0xffD0D0D0):index==3?const Color(0xffFFFFFF):const Color(0xff000000),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  color: e["color"] as Color,
                  radius: 100,
                  currentView: index!=0?"borderIsTrue":"",
                ),
                index==0?const SizedBox(height: 50,):SizedBox()
              ],
            ),
          );
        },

      ),
      bottomNavigationBar:const ButtonWidget(
        widget: TextWidget(
            value: 'Next',
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Color(0xffFFFFFF),
            textAlign: TextAlign.center),
        color: Color(0xff7FB9C1),
        radius: 30,
        currentView: "bottom",
      ),


    );
  }
}
