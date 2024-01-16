import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

// import 'package:flutter_bluetooth_basic/flutter_bluetooth_basic.dart';
import 'package:get/get.dart';
import 'package:musicapp/controllers/devicescan_controller.dart';

class DeviceScanningPage extends GetView<DeviceController> {
  @override
  Widget build(BuildContext context) {
    List no = [
      {"v": 1, "t": "no"},
      {"v": 2, "t": "no"},
      {"v": 3, "t": "no"},
      {"v": 4, "t": "no"},
      {"v": 5, "t": "no"},
      {"v": 6, "t": "no"},
      {"v": 7, "t": "no"},
      {"v": 8, "t": "no"},
      {"v": 9, "t": "no"},
      {"v": Icon(Icons.backspace_outlined), "t": "icon"},
      {"v": 0, "t": "no"},
      {"v": Icon(Icons.navigate_next), "t": "icon"},
    ];
    // return Scaffold(
    //   floatingActionButton: FloatingActionButton(onPressed: () {
    //     controller.scanDevices();
    //   },),
    //   body: Center(
    //     child: FutureBuilder(
    //       future: controller.scanDevices(),
    //       builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
    //         return snapshot.hasData?Text("${snapshot.data!}"):Text("no devices found");
    //       },
    //     ),
    //   ),
    // );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Obx(() => Text(controller.valueOfPin.value)),
            Expanded(
              child: GridView.builder(
                itemCount: no.length,
                  gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 14,mainAxisSpacing: 15),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    child: CircleAvatar(
                      backgroundColor: Color(0xffF1F1F1),
                      child: no[index]['t'].toString()=="no"?Text(no[index]['v'].toString()):(no[index]['v']) ,
                    ),
                    onTap: (){
                      controller.valueOfPin.value = "${controller.valueOfPin.value}${no[index]['v']}";
                      print(controller.valueOfPin.value);

                    },
                  );
                },),
            )
          ],
        ),
      ),
    );
  }

  Widget placeHolder() {
    return Container();
  }
}
