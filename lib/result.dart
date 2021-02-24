import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required double kelvin,
    @required double reamor,
  })  : _kelvin = kelvin,
        _reamor = reamor,
        super(key: key);

  final double _kelvin;
  final double _reamor;
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Suhu dalam Kelvin",
                  style: TextStyle(height: 1.5, fontSize: 15)),
              Text("$_kelvin", style: TextStyle(height: 2, fontSize: 25)),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Suhu dalam Reamor",
                  style: TextStyle(height: 1.5, fontSize: 15)),
              Text("$_reamor", style: TextStyle(height: 2, fontSize: 25)),
            ],
          )
        ],
      ),
    );
  }
}