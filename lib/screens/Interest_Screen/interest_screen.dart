import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shorts/screens/Language_Screen/language_screen.dart';

class InterestScreen extends StatefulWidget {
  // MyHomePage({Key key}) : super(key: key);

  @override
  _InterestScreenState createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body:
        interestSelection() // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget interestSelection() {
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
          padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  "        Choose Your Interests",
                  style: TextStyle(fontSize: 25, color: Colors.white54),
                ),
              ),
              Container(height: 24, width: 24)
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
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        // decoration: BoxDecoration(
                        //     color: Colors.amber,
                        //     image: DecorationImage(
                        //       image: NetworkImage(
                        //           "https://images.unsplash.com/photo-1558507652-2d9626c4e67a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXRzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                        //       fit: BoxFit.cover,
                        //     )),
                        child: Image.asset(
                          'assets/images/int2.PNG',
                          height: 420,
                          width: 295,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text("  STEP 2 OF 2",
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
                              MaterialPageRoute(builder: (context) => LanguageScreen()),
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
