import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class videoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        padding: EdgeInsets.only(left: 20.0, bottom: 20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    '@firstjonny    ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  // new Image.asset(
                  //   'assets/images/verified.png',
                  //   // width: animation.value * 250,
                  //   // height: animation.value * 250,
                  // ),
                  Container(
                      height: 25,
                      width: 80,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Color(0xFF02E3D4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text("Follow"),
                      ))
                ],
              ),
              Text('Video title and some other stuff'),
              Text('#minilive #new #video...'),
              Row(children: [
                Icon(
                  Icons.music_note,
                  size: 15.0,
                  color: Colors.white,
                ),
                Text('Artist name - Album name - song',
                    style: TextStyle(fontSize: 12.0))
              ]),
            ]));
  }
}
