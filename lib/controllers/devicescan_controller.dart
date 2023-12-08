import 'package:flutter_bluetooth_basic/flutter_bluetooth_basic.dart';

class DeviceController {
  //bluetooth instance
  BluetoothManager bluetoothManager = BluetoothManager.instance;

  //scanning for devices
  Future <Stream> scanForDevices() async{
    bluetoothManager.startScan()
        .then((value) => null);
    final result =
        bluetoothManager.scanResults;
    return result;
  }
}