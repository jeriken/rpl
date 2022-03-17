import 'package:flutter/material.dart';
import 'package:rpl/database/hive.dart';

import 'package:rpl/fitur/camera.dart';
import 'package:rpl/fitur/celullar.dart';
import 'package:rpl/fitur/contact.dart';
import 'package:rpl/fitur/device.dart';
import 'package:rpl/fitur/finger.dart';
import 'package:rpl/fitur/geo.dart';
import 'package:rpl/fitur/microphone.dart';
import 'package:rpl/fitur/nfc.dart';
import 'package:rpl/fitur/notif.dart';
import 'package:rpl/fitur/sensor.dart';
import 'package:rpl/fitur/speaker.dart';
import 'package:rpl/fitur/bluetooth.dart';
import 'package:rpl/fitur/nfc.dart';
import 'package:rpl/fitur/imei.dart';
import 'fitur/nfc.dart';

Future<void> main() async {
  runApp(const MaterialApp(
    title: 'Flutter',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView(
        children: [
          // Container(
          //   width: 100,
          //   height: 70,
          //   padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
          //   child: ElevatedButton(
          //     child: const Text('Notification'),
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => NotifPage()),
          //       );
          //     },
          //   ),
          // ),
          Container(
            width: 100,
            height: 70,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ElevatedButton(
              child: const Text('Geo-Location'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GeolocatorWidget()),
                );
              },
            ),
          ),
          Container(
            width: 100,
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ElevatedButton(
              child: const Text('Camera Access'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CameraPage(id: '',)),
                );
              },
            ),
          ),
          Container(
            width: 100,
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ElevatedButton(
              child: const Text('Speaker Access'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SpeakerPage()),
                );
              },
            ),
          ),
          Container(
            width: 100,
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ElevatedButton(
              child: const Text('Microphone Access'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Microphone()),
                );
              },
            ),
          ),
          // Container(
          //   width: 100,
          //   height: 60,
          //   padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          //   child: ElevatedButton(
          //     child: const Text('Contact Access'),
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => ContactsExampleApp()),
          //       );
          //     },
          //   ),
          // ),
          Container(
            width: 100,
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ElevatedButton(
              child: const Text('Fingerprint & FaceID'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FingerPage()),
                );
              },
            ),
          ),
          Container(
            width: 100,
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ElevatedButton(
              child: const Text('Celullar & Wifi'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CelullarPage()),
                );
              },
            ),
          ),
          Container(
            width: 100,
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ElevatedButton(
              child: const Text('Bluetooth'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BluetoothPage()),
                );
              },
            ),
          ),
          Container(
            width: 100,
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ElevatedButton(
              child: const Text('Accelerometer & Gyroscope & Magnetometer'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SensorPage()),
                );
              },
            ),
          ),
          // Container(
          //   width: 100,
          //   height: 60,
          //   padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          //   child: ElevatedButton(
          //     child: const Text('NFC'),
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => NFCPage()),
          //       );
          //     },
          //   ),
          // ),
          Container(
            width: 100,
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ElevatedButton(
              child: const Text('Serial Number'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DeviceInfoPage()),
                );
              },
            ),
          ),
          Container(
            width: 100,
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ElevatedButton(
              child: const Text('IMEI'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const IMEIPage()),
                );
              },
            ),
          ),
          Container(
            width: 100,
            height: 60,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ElevatedButton(
              child: const Text('Cache'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HivePage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
