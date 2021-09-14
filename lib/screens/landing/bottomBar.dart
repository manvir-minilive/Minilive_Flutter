import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_shorts/screens/homeScreen/home_page.dart';

// ignore: camel_case_types
class bottomBar extends StatefulWidget {
  // const bottomBar({ Key? key }) : super(key: key);

  @override
  _bottomBarState createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  int currentTab = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final List<Widget> screens = [
    Container(
      color: Colors.amber,
      child: HomePage(),
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.cyan,
    ),
    Container(
      color: Colors.purple,
    ),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.transparent,
            onPressed: () {},
            child: Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: new Image.asset(
                  'assets/images/iconed.png',
                  height: 60.0,
                  fit: BoxFit.scaleDown,
                ))
            // Icon(
            //   Icons.blur_circular,
            //   color: Colors.pinkAccent,
            //   size: 65,
            // ),
            ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.black26,
          shape: CircularNotchedRectangle(),
          notchMargin: 15,
          child: Container(
            height: 60,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = HomePage();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: currentTab == 0 ? Colors.white : Colors.white60,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color:
                              currentTab == 0 ? Colors.white : Colors.white60,
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = HomePage();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.lightbulb_outline,
                        color: currentTab == 1 ? Colors.white : Colors.white60,
                      ),
                      Text(
                        "Challenges",
                        style: TextStyle(
                          color:
                              currentTab == 1 ? Colors.white : Colors.white60,
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = HomePage();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.scanner,
                        color: currentTab == 2 ? Colors.white : Colors.white60,
                      ),
                      Text(
                        "Mini Video",
                        style: TextStyle(
                          color:
                              currentTab == 2 ? Colors.white : Colors.white60,
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = HomePage();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.perm_identity,
                        color: currentTab == 3 ? Colors.white : Colors.white60,
                      ),
                      Text(
                        "me",
                        style: TextStyle(
                          color:
                              currentTab == 3 ? Colors.white : Colors.white60,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: PageStorage(bucket: bucket, child: currentScreen));
  }
}
