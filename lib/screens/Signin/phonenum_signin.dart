import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_shorts/screens/Otp_Screen/otp_screen.dart';
import 'package:flutter_shorts/screens/Signup/signup_screen.dart';
import 'package:flutter_shorts/utils/frosted_glass.dart';

final Color textColor = Colors.white.withOpacity(0.4);

class PhoneNumberSignin extends StatefulWidget {
  @override
  _PhoneNumberSigninState createState() => _PhoneNumberSigninState();
}

class _PhoneNumberSigninState extends State<PhoneNumberSignin> {
  // Country _selected;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double contHeight = size.width * 1.0;
    double contWidth = size.width * .90;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
                  bottom:
                      10, // This can be the space you need between text and underline
                ),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.tealAccent,
                    width: 5.0, // This would be the width of the underline
                  )),
                ),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
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
                  children: <Widget>[
                    SizedBox(height: 70),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "   What's your phone number? ",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                // CountryPicker(
                                //   showDialingCode: true,
                                //   onChanged: (Country country) {
                                //     setState(() {
                                //       _selected = country;
                                //     });
                                //   },
                                //   selectedCountry: _selected,),
                                // SizedBox(width: 70),
                                Text(
                                  "    Enter Phone Number",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                // SizedBox(width: 50),
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
                                          builder: (context) => OtpScreen()),
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
                      // child: TextField(
                      //   style: TextStyle(color:Colors.white),
                      //   decoration: InputDecoration(hintText: 'Enter Phone No',
                      //     hintStyle: TextStyle(color: Colors.white),
                      //     suffix: IconButton(
                      //       icon: Icon(
                      //         Icons.arrow_forward_rounded,),
                      //       iconSize: 30,
                      //       color: Colors.pinkAccent,
                      //       onPressed: () {},),
                      //     enabledBorder: UnderlineInputBorder(
                      //       borderSide: BorderSide(color: textColor),
                      //     ),
                      //     focusedBorder: UnderlineInputBorder(
                      //       borderSide: BorderSide(color: textColor),
                      //     ),
                      //
                      //   ),
                      // ),width: MediaQuery.of(context).size.width * 0.5,
                    ),
                    SizedBox(height: 100),
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
