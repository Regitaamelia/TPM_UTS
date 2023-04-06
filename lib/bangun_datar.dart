import 'package:flutter/material.dart';
import 'package:regitaamelia_uts/home.dart';
import 'package:regitaamelia_uts/tabung.dart';
import 'package:regitaamelia_uts/trapesium.dart';

class BangunDatar extends StatefulWidget {
  const BangunDatar({Key? key}) : super(key: key);

  @override
  State<BangunDatar> createState() => _BangunDatarState();
}
class _BangunDatarState extends State<BangunDatar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bangun Datar"),
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
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 90.0),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.teal[200],
                onPrimary: Colors.black,),
              child: Text('Trapesium'),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return Trapesium();
                }));
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.teal[300],
                onPrimary: Colors.black,),
              child: Text('Tabung'),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return Tabung();
                }));
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.0),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.teal[50],
                onPrimary: Colors.teal,),
              child: Text('Home'),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
            ),
          ]),
        ),
      ),
    );
  }
}
