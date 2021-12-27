import 'package:flutter/material.dart';

import '../objectbox.g.dart';

@Entity()
class BoxStore {
  int id;
  String data;

  BoxStore({this.id = 0, required this.data});
}

class ObjectPage extends StatefulWidget {
  const ObjectPage({Key? key}) : super(key: key);

  @override
  _ObjectPageState createState() => _ObjectPageState();
}

class _ObjectPageState extends State<ObjectPage> {
  late Box box;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    store();
  }

  Future<void> store() async {
    final store = await openStore(); 
    box = store.box<BoxStore>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Percobaan ObjectBox"),
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
      box.put(BoxStore(data:'ini adalah date ke- ${i.toString()}'));
    }
    var akhir = DateTime.now().millisecondsSinceEpoch;
    print('Waktu membuat 5000 data: ${akhir - awal} ms');
  }

  void readData() {
    var awal = DateTime.now().millisecondsSinceEpoch;
    box.getAll();
    var akhir = DateTime.now().millisecondsSinceEpoch;
    print('Waktu membaca 5000 data: ${akhir-awal} ms');
  }

  void updateData() {
    var awal = DateTime.now().millisecondsSinceEpoch;
    for (var i = 1; i < 5001; i++) {
      var data = box.get(i);
      data.data = "tes";
      box.put(data);
    }
    var akhir = DateTime.now().millisecondsSinceEpoch;
    print('Waktu mengupdate 5000 data: ${akhir - awal} ms');
  }

  void deleteData() {
    var awal = DateTime.now().millisecondsSinceEpoch;
    box.removeAll();
    var akhir = DateTime.now().millisecondsSinceEpoch;
    print('Waktu menghapus 5000 data: ${akhir - awal} ms');
  }
}
