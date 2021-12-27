import 'package:flutter/material.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HivePage extends StatefulWidget {
  const HivePage({Key? key}) : super(key: key);

  @override
  _HivePageState createState() => _HivePageState();
}

class _HivePageState extends State<HivePage> {
  late Box box1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createBox();
  }

  void createBox() async {
    box1 = await Hive.openBox('database1');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Percobaan Hive"),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              width: 100,
              height: 70,
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
              child: ElevatedButton(
                child: const Text('Tambah Data'),
                onPressed: () {
                  addData();
                },
              ),
            ),
            Container(
              width: 100,
              height: 70,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: ElevatedButton(
                child: const Text('Baca Data'),
                onPressed: () {
                  readData();
                },
              ),
            ),
            Container(
              width: 100,
              height: 70,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: ElevatedButton(
                child: const Text('Update Data'),
                onPressed: () {
                  updateData();
                },
              ),
            ),
            Container(
              width: 100,
              height: 70,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: ElevatedButton(
                child: const Text('Hapus Data'),
                onPressed: () {
                  deleteData();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void addData() {
    var awal = DateTime.now().millisecondsSinceEpoch;
    for (var i = 0; i < 5000; i++) {
      box1.add('ini adalah date ke- ${i.toString()}');
    }
    var akhir = DateTime.now().millisecondsSinceEpoch;
    print('Waktu membuat 5000 data: ${akhir-awal} ms');
  }

  void readData() {
    var awal = DateTime.now().millisecondsSinceEpoch;
    box1.toMap();
    var akhir = DateTime.now().millisecondsSinceEpoch;
    print('Waktu membaca 5000 data: ${akhir-awal} ms');
  }

  void updateData() {
    var awal = DateTime.now().millisecondsSinceEpoch;
    for (var i = 0; i < 5000; i++) {
      box1.put(i, 'ini adalah date ke- ${i.toString()} | diubah');
    }
    var akhir = DateTime.now().millisecondsSinceEpoch;
    print('Waktu mengupdate 5000 data: ${akhir-awal} ms');
  }

  void deleteData(){
    var awal = new DateTime.now().millisecondsSinceEpoch;
    Hive.box('database1');
    var akhir = new DateTime.now().millisecondsSinceEpoch;
    print('Waktu menghapus 5000 data: ${akhir-awal} ms');
  }
}
