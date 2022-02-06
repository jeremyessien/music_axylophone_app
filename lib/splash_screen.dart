import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'dart:ui';
import 'package:music_axylophone_app/xylophone_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => XylophonePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade100,
      body: Expanded(
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
              "Xylophone",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.indigo),
            ),
                )),
      ),
    );
  }
}
