// import 'package:flutter_bluetooth_basic/flutter_bluetooth_basic.dart';

import 'package:bluetooth_classic/bluetooth_classic.dart';
import 'package:bluetooth_classic/models/device.dart';
import 'package:get/get.dart';

class DeviceController {
  final _bluetoothClassicPlugin = BluetoothClassic();
  bool scanning = false;
  RxList<Device> discoveredDevices = <Device>[].obs;
  RxString valueOfPin= "".obs;

  Future<List> scanDevices() async {
    if (! scanning){
      _bluetoothClassicPlugin.startScan();
      _bluetoothClassicPlugin.onDeviceDiscovered().listen((event) {
        print(event.name);
        discoveredDevices.value = [...discoveredDevices, event];
      });
    }
    return discoveredDevices;
  }



}
// Future<List> getDevices() async {
//   var res = await _bluetoothClassicPlugin.getPairedDevices();
//   devices=res;
//   print(devices);
//
//   return devices;
// }
//

// }
