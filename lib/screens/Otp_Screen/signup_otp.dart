import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_shorts/screens/login/login_screen.dart';
import 'package:flutter_shorts/utils/frosted_glass.dart';


final Color textColor = Colors.white;

class SignUpOtpScreen extends StatefulWidget {

  @override
  _SignUpOtpScreenState createState() => _SignUpOtpScreenState();
}

class _SignUpOtpScreenState extends State<SignUpOtpScreen> {
  // Country _selected;
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
                  "Sign Up",style: TextStyle(color:Colors.white, fontSize: 30,),),
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
                    SizedBox(height:80),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Got an OTP? ",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(color:Colors.white, fontSize: 29,),
                      ),),
                    SizedBox(height: 50),
                    Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 70),
                                Text(
                                  "       .... .... .... ....",
                                  style: TextStyle(color: Colors.white, fontSize: 25,),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(width: 70),
                              ],
                            ),
                            Divider(
                              color: textColor,
                              height: 30,
                              endIndent: 10,
                              indent: 10,
                              thickness:0.5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 45),
                    ElevatedButton(
                      child: Text('Sign up',
                        style: TextStyle(color:Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent,
                          fixedSize: Size(150, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      onPressed: () {
                        print('Pressed');
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => LoginScreen()),
                        // );
                      },
                    ),
                    SizedBox(height:15),
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