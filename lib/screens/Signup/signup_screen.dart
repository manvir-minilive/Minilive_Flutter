import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shorts/screens/Signup/phonenum_signup.dart';
import 'package:flutter_shorts/screens/login/login_screen.dart';
import 'package:flutter_shorts/utils/frosted_glass.dart';

import 'apple_signup.dart';
import 'email_signup.dart';
import 'google_signup.dart';


final Color textColor = Colors.white.withOpacity(0.4);

class SignUpScreen extends StatelessWidget {
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
          children: <Widget> [
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
                  children:<Widget>[
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "  How would you like to start? ",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(color:Colors.white, fontSize: 29,),
                      ),),
                    SizedBox(height: 20),
                    Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "    Sign Up with Phone Number",
                                  style: TextStyle(color: Colors.white, fontSize: 18,),
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(width: 70),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_rounded,),
                                  iconSize: 30,
                                  color: Colors.pinkAccent,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => PhoneNumberSignUp()),
                                    );
                                  },),
                              ],
                            ),
                            Divider(
                              color: textColor,
                              endIndent: 20,
                              indent: 20,
                              thickness:0.5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "    Sign Up with Google",
                                  style: TextStyle(color: Colors.white, fontSize: 18,),
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(width: 130),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_rounded,),
                                  iconSize: 30,
                                  color: Colors.pinkAccent,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => GoogleSignup()),
                                    );
                                  },),
                              ],
                            ),
                            Divider(
                              color: textColor,
                              endIndent: 20,
                              indent: 20,
                              thickness:0.5,
                            ),

                            Row(
                              children: [
                                Text(
                                  "    Sign Up with Apple ID",
                                  style: TextStyle(color: Colors.white, fontSize: 18,),
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(width: 120),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_rounded,),
                                  iconSize: 30,
                                  color: Colors.pinkAccent,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => AppleSignup()),
                                    );
                                  },),
                              ],
                            ),
                            Divider(
                              color: textColor,
                              endIndent: 20,
                              indent: 20,
                              thickness:0.5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "    Sign Up with Email",
                                  style: TextStyle(color: Colors.white, fontSize: 18,),
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(width: 140),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_rounded,),
                                  iconSize: 30,
                                  color: Colors.pinkAccent,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => EmailSignup()),
                                    );
                                  },),
                              ],
                            ),
                            Divider(
                              color: textColor,
                              endIndent: 20,
                              indent: 20,
                              thickness:0.5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Got an account?",
                          style: TextStyle(color:Colors.white, fontSize:12.5,fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          child: Text('Sign in'),
                          style: TextButton.styleFrom(
                            primary: Colors.tealAccent,
                          ),
                          onPressed: () {
                            print('Pressed');
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()),
                            );
                          },
                        ),
                        Text("Here",
                          style: TextStyle(color:Colors.white, fontSize:12.5,fontWeight: FontWeight.bold),
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