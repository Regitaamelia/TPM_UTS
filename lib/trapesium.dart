import 'package:flutter/material.dart';
import 'package:regitaamelia_uts/bangun_datar.dart';

class Trapesium extends StatefulWidget {
  const Trapesium({Key? key}) : super(key: key);

  @override
  State<Trapesium> createState() => _TrapesiumState();
}
class _TrapesiumState extends State<Trapesium> {
  TextEditingController sisi_a = TextEditingController();
  TextEditingController sisi_b = TextEditingController();
  TextEditingController sisi_c = TextEditingController();
  TextEditingController sisi_d = TextEditingController();
  TextEditingController sisi_e = TextEditingController();
  double? result = 0,
      input_a = 0,
      input_b = 0,
      input_c = 0,
      input_d = 0,
      input_e = 0;

  keliling() {
    setState(() {
      input_a = double.parse(sisi_a.text);
      input_b = double.parse(sisi_b.text);
      input_c = double.parse(sisi_c.text);
      input_d = double.parse(sisi_d.text);
      result = input_a! + input_b! + input_c! + input_d!;
    });
  }

  luas() {
    setState(() {
      input_a = double.parse(sisi_a.text);
      input_b = double.parse(sisi_b.text);
      input_e = double.parse(sisi_e.text);
      result = 0.5 * (input_a! + input_b!) * input_e!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Hitungan Trapesium'),
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
                controller: sisi_a,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Input sisi a',
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
              ),
              TextField(
                controller: sisi_b,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Input sisi b',
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
              ),
              TextField(
                controller: sisi_c,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Input sisi c',
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
              ),
              TextField(
                controller: sisi_d,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Input sisi d',
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
              ),
              TextField(
                controller: sisi_e,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Input sisi e',
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
                    child: Text('Keliling'),
                    onPressed: () {
                      keliling();
                      sisi_a.clear();
                      sisi_b.clear();
                      sisi_c.clear();
                      sisi_d.clear();
                      sisi_e.clear();
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 60, 0, 0),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.teal[200],
                      onPrimary: Colors.black,),
                    child: Text('Luas'),
                    onPressed: () {
                      luas();
                      sisi_a.clear();
                      sisi_b.clear();
                      sisi_c.clear();
                      sisi_d.clear();
                      sisi_e.clear();
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(210, 60, 0, 0),
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
      ),
    );
  }
}
