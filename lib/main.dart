import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input.dart';
import 'convert.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController suhu = new TextEditingController();

  double _inputSuhu = 0;
  double _kelvin = 0;
  double _reamor = 0;
  void _hitungSuhu() {
    setState(() {
      // _inputSuhu = double.parse(suhu.text);
      _inputSuhu = double.parse(suhu.text);
      _kelvin = _inputSuhu + 273;
      _reamor = (4 / 5) * _inputSuhu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              Input(suhu: suhu),
              Result(kelvin: _kelvin, reamor: _reamor),
              Convert(konvertHandler: _hitungSuhu),
            ],
          ),
        ),
      ),
    );
  }
}