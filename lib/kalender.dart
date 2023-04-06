import 'package:flutter/material.dart';
import 'package:regitaamelia_uts/home.dart';
import 'package:intl/intl.dart';

class Kalender extends StatefulWidget {
  const Kalender({Key? key}) : super(key: key);

  @override
  _KalenderState createState() => _KalenderState();
}
enum TimeZone { wib, wit, wita }
class _KalenderState extends State<Kalender> {
  DateTime _dateTime = DateTime.now();
  TimeZone _timeZone = TimeZone.wib;

  void _setTimeZone(TimeZone timeZone) {
    setState(() {
      _timeZone = timeZone;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (_timeZone) {
      case TimeZone.wib:
        _dateTime = DateTime.now().add(Duration(hours: 0));
        break;
      case TimeZone.wit:
        _dateTime = DateTime.now().add(Duration(hours: 2));
        break;
      case TimeZone.wita:
        _dateTime = DateTime.now().add(Duration(hours: 1));
        break;
      default:
        _dateTime = DateTime.now().add(Duration(hours: 0));
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Kalender'),
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
              Color.fromARGB(255, 172, 226, 213),
              Color.fromARGB(255, 166, 203, 198)
            ],
          ),
        ),
        padding: const EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              DateFormat('EEEE, dd MMMM yyyy').format(_dateTime),
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              DateFormat('HH:mm:ss').format(_dateTime),
              style: TextStyle(fontSize: 36.0),
            ),
            SizedBox(
              height: 16.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    _setTimeZone(TimeZone.wib);
                  },
                  child: Text('WIB'),
                  color: _timeZone == TimeZone.wib
                      ? Colors.deepOrange[400]
                      : Colors.grey[300],
                ),
                SizedBox(
                  width: 16.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                MaterialButton(
                  onPressed: () {
                    _setTimeZone(TimeZone.wita);
                  },
                  child: Text('WITA'),
                  color: _timeZone == TimeZone.wita
                      ? Colors.deepOrange[400]
                      : Colors.grey[300],
                ),
                SizedBox(
                  width: 16.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                MaterialButton(
                  onPressed: () {
                    _setTimeZone(TimeZone.wit);
                  },
                  child: Text('WIT'),
                  color: _timeZone == TimeZone.wit
                      ? Colors.deepOrange[400]
                      : Colors.grey[300],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal[50],
                onPrimary: Colors.teal,
              ),
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
      ),
    );
  }
}
