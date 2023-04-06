import 'package:flutter/material.dart';
import 'package:regitaamelia_uts/detail_profil.dart';
import 'package:regitaamelia_uts/home.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}
class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profil'),
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
                padding: EdgeInsets.only(top: 20.0),
              ),
              Card(
                child: (Image.asset(
                  'assets/image/regita.jpg',
                  width: 170,
                  height: 170,
                )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Nama  : Regita Amelia Asnawi Putri',
                    style: TextStyle(fontSize: 16),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'NIM     : 123200024',
                    style: TextStyle(fontSize: 16),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.redAccent[200],
                  onPrimary: Colors.red[100],),
                child: Text('Detail Profil'),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return DetailProfil();
                  }));
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
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
            ],
          ),
        ));
  }
}
