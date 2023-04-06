import 'package:flutter/material.dart';
import 'package:regitaamelia_uts/home.dart';
import 'package:regitaamelia_uts/profil.dart';

class DetailProfil extends StatefulWidget {
  const DetailProfil({Key? key}) : super(key: key);

  @override
  State<DetailProfil> createState() => _DetailProfilState();
}
class _DetailProfilState extends State<DetailProfil> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Detail Profil"),
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
                  'Nama      : Regita Amelia Asnawi Putri',
                  style: TextStyle(fontSize: 16),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'NIM         : 123200024',
                  style: TextStyle(fontSize: 16),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Kelas       : TPM IF-C',
                  style: TextStyle(fontSize: 16),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'T.T.L         : Lamongan, 15 September 2002',
                  style: TextStyle(fontSize: 16),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Harapan  : Di Masa Depan Bisa Membantu Banyak Orang yang Membutuhkan',
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
              child: Text('Profil'),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                      return Profil();
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
          ]),
        ),
      ),
    );
  }
}
