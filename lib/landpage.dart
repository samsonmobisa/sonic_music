import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/pagetwo.dart';
import 'package:musicapp/widgets/button_widget.dart';
import 'package:musicapp/widgets/text_widget.dart';

class LandPage extends GetView{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column(
              children: [
                TextWidget(
                    value: "Let's plant with us",
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    textAlign: TextAlign.center),
                SizedBox(height: 10,),
                TextWidget(
                    value: "make the world green again",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    textAlign: TextAlign.center),
              ],
            ),
            Image.asset('assets/person.png'),
            InkWell(
              child: const ButtonWidget(
                widget: Center(
                  child: TextWidget(
                      value: "Sign Up",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      textAlign: TextAlign.center),

                ),
                color: Color(0xff00B761),
                radius: 15,

              ),
              onTap: (){
                Get.off(PageTwo());
              },

            ),
            const TextWidget(
                value: "Create an account",
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                textAlign: TextAlign.center),
          ],

        ),
      ),
    );
  }

}