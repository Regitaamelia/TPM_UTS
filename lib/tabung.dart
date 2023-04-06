import 'package:flutter/material.dart';
import 'package:regitaamelia_uts/bangun_datar.dart';

class Tabung extends StatefulWidget {
  const Tabung({Key? key}) : super(key: key);

  @override
  State<Tabung> createState() => _TabungState();
}
class _TabungState extends State<Tabung> {
  TextEditingController jari_jari = TextEditingController();
  TextEditingController tinggi = TextEditingController();
  double? result = 0, input1 = 0, input2 = 0;

  luas_permukaan() {
    setState(() {
      input1 = double.parse(jari_jari.text);
      input2 = double.parse(tinggi.text);
      result = 2 * 3.14 * input1! * (input1! + input2!);
    });
  }

  volume() {
    setState(() {
      input1 = double.parse(jari_jari.text);
      input2 = double.parse(tinggi.text);
      result = input1! * input2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Hitungan Tabung'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.teal,
                    Colors.tealAccent])),
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 192, 226, 218),
              Color.fromARGB(255, 194, 222, 217)
            ],
          ),
        ),
        padding: const EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(30, 50, 0, 0),
            ),
            TextField(
              controller: jari_jari,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Masukkan jari-jari (r)',
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
            ),
            TextField(
              controller: tinggi,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Masukkan tinggi',
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(100, 60, 0, 0),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.teal[200],
                    onPrimary: Colors.black,),
                  child: Text('Luas Permukaan'),
                  onPressed: () {
                    luas_permukaan();
                    jari_jari.clear();
                    tinggi.clear();
                  },
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(100, 60, 0, 0),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.teal[200],
                    onPrimary: Colors.black,),
                  child: Text('Volume'),
                  onPressed: () {
                    volume();
                    jari_jari.clear();
                    tinggi.clear();
                  },
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(240, 60, 0, 0),
                ),
                Text(
                  'Hasil : $result',
                  style: TextStyle(fontSize: 16),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.teal,
                onPrimary: Colors.white,),
              child: Text('Back'),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return BangunDatar();
                }));
              },
            ),
          ],
        ),
      ),
    ));
  }
}
