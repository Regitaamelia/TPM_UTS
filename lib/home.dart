import 'package:flutter/material.dart';
import 'login.dart';
import 'profil.dart';
import 'bangun_datar.dart';
import 'kalender.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Beranda"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.teal, Colors.tealAccent])),
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
              padding: EdgeInsets.only(top: 90.0),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.teal[300],
                onPrimary: Colors.black,),
              child: Text('Menu Bangun Datar'),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return BangunDatar();
                }));
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.teal[200],
                onPrimary: Colors.black,),
              child: Text('Menu Kalender'),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return Kalender();
                }));
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.teal[100],
                onPrimary: Colors.black,),
              child: Text('Menu Profil'),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return Profil();
                }));
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.0),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.deepOrange[400],
                onPrimary: Colors.white,),
              child: Text('Logout'),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }));
              },
            ),
          ],
        ),
      ),
    ));
  }
}
