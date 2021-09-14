import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_shorts/screens/Otp_Screen/otp_screen.dart';
import 'package:flutter_shorts/screens/Signup/signup_screen.dart';
import 'package:flutter_shorts/utils/frosted_glass.dart';


final Color textColor = Colors.white.withOpacity(0.4);

class AppleSignin extends StatefulWidget {

  @override
  _AppleSigninState createState() => _AppleSigninState();
}

class _AppleSigninState extends State<AppleSignin> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double contHeight = size.width * 1.0;
    double contWidth = size.width * 0.95;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            SizedBox(height: 70),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/logo.png",
                width: size.width * 0.25,
              ),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Container(
                padding: EdgeInsets.only(
                  bottom: 10, // This can be the space you need between text and underline
                ),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.tealAccent,
                    width: 5.0, // This would be the width of the underline
                  )),

                ),
                child: Text(
                  "Sign In - Apple ID",style: TextStyle(color:Colors.white, fontSize: 30,),),
              ),
            ),
            // SizedBox(height: 5),
            Center(
              child: FrostedGlassBox(
                width: contWidth,
                height: contHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children:<Widget>[
                    SizedBox(height:70),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "What's your Apple ID? ",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(color:Colors.white, fontSize: 29,),
                      ),),
                    SizedBox(height: 75),
                    Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 40),
                                Icon(
                                  Icons.email_outlined,
                                  color: Colors.tealAccent,
                                  size: 30.0,
                                ),
                                SizedBox(width: 40),
                                Text(
                                  "    Enter Apple ID",
                                  style: TextStyle(color: Colors.white, fontSize: 18,),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(width: 50),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_rounded,),
                                  iconSize: 30,
                                  color: Colors.pinkAccent,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => OtpScreen()),
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
                    SizedBox(height: 85),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",
                          style: TextStyle(color:Colors.white, fontSize:12.5,fontWeight: FontWeight.bold),
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
                              MaterialPageRoute(builder: (context) => SignUpScreen()),
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