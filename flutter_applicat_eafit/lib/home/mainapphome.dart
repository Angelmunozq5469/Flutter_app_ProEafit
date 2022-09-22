import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_applicat_eafit/home/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 13, 139, 217),
                gradient: LinearGradient(colors: [
                  (Color.fromARGB(255, 13, 139, 217)),
                  (Color.fromARGB(255, 13, 139, 217))
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            child: Container(
              child: Image.asset(
                  "/Users/angelmunozquintero/Documents/Universidad CES/Proyecto EAFIT/DevelopEAFIT/images/logo.png"),
            ),
          )
        ],
      ),
    );
  }
}
