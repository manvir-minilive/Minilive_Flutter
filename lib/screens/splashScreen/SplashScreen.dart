import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_shorts/screens/Welcome/welcome_screen.dart';
import 'package:flutter_shorts/screens/landing/bottomBar.dart';
import 'package:flutter_shorts/screens/login/Login.dart';
import 'package:flutter_shorts/screens/splashScreen/onBoardingScreen.dart';
import 'package:flutter_shorts/utils/deviceSize.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

DeviceSize deviceSize;

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => WelcomeScreen()));
  }

  @override
  void initState() {
    super.initState();

    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 2));
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    deviceSize = DeviceSize(
        size: MediaQuery.of(context).size,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        aspectRatio: MediaQuery.of(context).size.aspectRatio);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // new Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   mainAxisSize: MainAxisSize.min,
          //   children: <Widget>[
          //     Padding(
          //         padding: EdgeInsets.only(bottom: 30.0),
          //         child: new Image.asset(
          //           'assets/images/logo.png',
          //           height: 25.0,
          //           fit: BoxFit.scaleDown,
          //         ))
          //   ],
          // ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                'assets/images/logo.png',
                width: animation.value * 250,
                height: animation.value * 250,
              ),
            ],
          ),
        ],
      ),
    );

    // void initState() {
    //   super.initState();
    //   Timer(
    //       Duration(seconds: 4),
    //       () => Navigator.of(context).pushReplacement(
    //           MaterialPageRoute(builder: (BuildContext context) => bottomBar())));
    // }

    // @override
    // Widget build(BuildContext context) {
    //   return AnnotatedRegion<SystemUiOverlayStyle>(
    //       value: SystemUiOverlayStyle(
    //         statusBarBrightness: Brightness.dark,
    //       ),
    //       child: Scaffold(
    //         body: Container(
    //             color: Colors.black,
    //             child: Align(
    //               alignment: Alignment.center,
    //               child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: <Widget>[
    //                   Image.asset(
    //                     "assets/images/logo.png",
    //                     width: 160,
    //                   ),
    //                   SizedBox(
    //                     height: 5,
    //                   ),
    //                 ],
    //               ),
    //             )),
    //       ));
  }
}
