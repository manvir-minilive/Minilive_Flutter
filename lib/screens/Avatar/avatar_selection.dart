import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shorts/screens/Interest_Screen/interest_screen.dart';


class AvatarScreen extends StatefulWidget {
  // MyHomePage({Key key}) : super(key: key);

  @override
  _AvatarScreenState createState() => _AvatarScreenState();
}

class _AvatarScreenState extends State<AvatarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body:
        profileView() // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget profileView() {
    return Column(
      children: <Widget>[
        SizedBox(height: 20,),
        Padding(padding: EdgeInsets.fromLTRB(40, 60, 40, 5),
         child: Align(
           alignment: Alignment.topLeft,
           child: Container(
           child: Image.asset(
             'assets/images/logo.png',
             height: 50,
             width: 50,
             fit: BoxFit.cover,
           ),
           ),
         ),

        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  "            What's your style?",
                  style: TextStyle(fontSize: 25, color: Colors.white54),
                ),
              ),
              Container(height: 24, width: 24)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/pro1.png',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.black54,
                              Color.fromRGBO(0, 41, 102, 1)
                            ]),
                        // color: Colors.deepOrange,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ))
            ],
          ),
        ),
        Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                // borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                // gradient: LinearGradient(
                //     begin: Alignment.topRight,
                //     end: Alignment.bottomLeft,
                //     colors: [Colors.black54, Color.fromRGBO(0, 41, 102, 1)])
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          radius: 35,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/pro1.png',
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 35,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/pro2.png',
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 35,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/pro3.png',
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          radius: 35,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/pro4.png',
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 35,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/pro5.png',
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 35,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/pro6.png',
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          radius: 35,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/pro7.png',
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 35,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/pro8.png',
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 35,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/pro9.png',
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text("  STEP 1 OF 1",
                          style: TextStyle(fontSize: 12, color: Colors.white),),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,),
                          iconSize: 20,
                          color: Colors.pinkAccent,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => InterestScreen()),
                            );
                          },),
                      ],
                    ),
                  ),

                ],
              ),
            ))
      ],
    );
  }
}
