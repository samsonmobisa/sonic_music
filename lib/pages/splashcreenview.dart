import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:image_fade/image_fade.dart';
import 'package:musicapp/widgets/button_widget.dart';
import 'package:musicapp/widgets/text_widget.dart';

import '../controllers/splash_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: controller.bodyData.where((e) => e['position'] as int==controller.currentShowing.value).map((element) =>
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: ImageFade(
                        width: 250,
                        // whenever the image changes, it will be loaded, and then faded in:
                        image:  AssetImage(element['image'].toString()),
                        // slow fade for newly loaded images:
                        duration: const Duration(milliseconds: 900),
                        // if the image is loaded synchronously (ex. from memory), fade in faster:
                        syncDuration: const Duration(milliseconds: 150),
                        // supports most properties of Image:
                        alignment: Alignment.center,
                        fit: BoxFit.cover,

                        // shown behind everything:
                        placeholder: Container(
                          color: Colors.transparent,
                          alignment: Alignment.center,
                          child: const Icon(Icons.photo,
                              color: Colors.white30, size: 128.0),
                        ),

                        // shows progress while loading an image:
                        loadingBuilder: (context, progress, chunkEvent) =>
                            Center(child: CircularProgressIndicator(value: progress)),

                        // displayed when an error occurs:
                        errorBuilder: (context, error) => Container(
                          color: const Color(0xFF6F6D6A),
                          alignment: Alignment.center,
                          child: const Icon(Icons.warning,
                              color: Colors.black26, size: 128.0),
                        ),
                      ),
                    ),
                    TextWidget(
                        value: element['title'],
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color:  Color(element['primaryColor']),
                        textAlign: TextAlign.center),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextWidget(
                          value: element['subTitle'],
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(element['primaryColor']).withOpacity(0.4),
                          textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: TextWidget(
                          value:
                          element['description'],
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Color(element['primaryColor']),
                          textAlign: TextAlign.center),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: InkWell(
                        child:  ButtonWidget(
                          widget: TextWidget(
                              value: element['buttonText'],
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFFFFFF),
                              textAlign: TextAlign.center),
                          color: Color(element['primaryColor']),
                          radius: 100,
                        ),
                        onTap: (){
                          controller.changeCurrentShowing();
                        },
                      ),
                    )
                  ],
                )).toList()
        )),
      ),
      backgroundColor: const Color(0xffF5F5F7),
    );
  }
}
