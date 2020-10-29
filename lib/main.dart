import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Font Features"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "contoh 01 (tanpa apapun)",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "contoh 02 (small caps)",
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable("smcp")]),
              ),
              Text(
                "contoh 1/2 (small caps dan frac)",
                style: TextStyle(fontSize: 20, fontFeatures: [
                  FontFeature.enable("smcp"),
                  FontFeature.enable("frac")
                ]),
              ),
              Text(
                "contoh 3 1/2 (small caps dan frac)",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Milonga",
                    fontFeatures: [
                      FontFeature.enable("smcp"),
                      FontFeature.enable("frac")
                    ]),
              ),
              Text(
                "contoh cardo (Cardo)",
                style: TextStyle(fontSize: 20, fontFamily: "Cardo"),
              ),
              Text(
                "contoh cardo (Cardo_oldstyle)",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Cardo",
                    fontFeatures: [FontFeature.oldstyleFigures()]),
              ),
              Text(
                "contoh Gabriola (deafult)",
                style: TextStyle(fontSize: 20, fontFamily: "Gabriola"),
              ),
              Text(
                "contoh Gabriola (style set no 5)",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Gabriola",
                    fontFeatures: [FontFeature.stylisticSet(5)]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
