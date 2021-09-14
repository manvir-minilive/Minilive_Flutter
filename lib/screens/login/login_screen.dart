import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shorts/screens/Signin/apple_signin.dart';
import 'package:flutter_shorts/screens/Signin/email_signin.dart';
import 'package:flutter_shorts/screens/Signin/google_signin.dart';
import 'package:flutter_shorts/screens/Signin/phonenum_signin.dart';
import 'package:flutter_shorts/screens/Signup/signup_screen.dart';
import 'package:flutter_shorts/utils/frosted_glass.dart';

final Color textColor = Colors.white.withOpacity(0.4);

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double contHeight = size.width * 1.30;
    double contWidth = size.width * 0.95;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/logo.png",
                width: size.width * 0.25,
              ),
            ),
            SizedBox(height: 60),
            Center(
              child: FrostedGlassBox(
                width: contWidth,
                height: contHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "  How would you like to start? ",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "     Sign In with Phone Number",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  // SizedBox(width: 70),
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward_rounded,
                                    ),
                                    iconSize: 25,
                                    color: Colors.pinkAccent,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PhoneNumberSignin()),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Divider(
                                color: textColor,
                                endIndent: 20,
                                indent: 20,
                                thickness: 0.5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "     Sign In with Google",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  // SizedBox(width: 130),
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward_rounded,
                                    ),
                                    iconSize: 25,
                                    color: Colors.pinkAccent,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                GoogleSignin()),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Divider(
                                color: textColor,
                                endIndent: 20,
                                indent: 20,
                                thickness: 0.5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "     Sign In with Apple ID",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  // SizedBox(width: 120),
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward_rounded,
                                    ),
                                    iconSize: 25,
                                    color: Colors.pinkAccent,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AppleSignin()),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Divider(
                                color: textColor,
                                endIndent: 20,
                                indent: 20,
                                thickness: 0.5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "     Sign In with Email",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  // SizedBox(width: 140),
                                  IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward_rounded,
                                    ),
                                    iconSize: 30,
                                    color: Colors.pinkAccent,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EmailSignin()),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Divider(
                                color: textColor,
                                endIndent: 20,
                                indent: 20,
                                thickness: 0.5,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.5,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          child: Text('Sign up'),
                          style: TextButton.styleFrom(
                            primary: Colors.tealAccent,
                          ),
                          onPressed: () {
                            print('Pressed');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()),
                            );
                          },
                        ),
                        Text(
                          "Here",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.5,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
