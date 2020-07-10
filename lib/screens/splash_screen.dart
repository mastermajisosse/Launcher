import 'dart:math';

import 'package:flutter/material.dart';
import 'package:launcher/utils/mystyle.dart';

class Splashs extends StatefulWidget {
  final double radius;
  final double dotRadius;

  Splashs({this.radius = 50.0, this.dotRadius = 10.0});
  @override
  _SplashsState createState() => _SplashsState();
}

class _SplashsState extends State<Splashs> with SingleTickerProviderStateMixin {
  AnimationController controller;

  double radius;
  double dotRadius;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5)).then((_) {
      Navigator.pushReplacementNamed(context, '/before');
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: height,
      width: width,
      color: Colors.black,
      child: Container(
        width: 200,
        height: 200,
        alignment: Alignment.center,
        child: Container(
          width: 100,
          height: 100,
          child: CircularProgressIndicator(
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(
              (Color(0xFF085fed)),
            ),
          ),
        ),
      ),
    ));
  }
}
