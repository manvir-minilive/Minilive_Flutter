import 'package:flutter/material.dart';
import 'package:flutter_shorts/screens/Avatar/avatar_selection.dart';
import 'package:flutter_shorts/screens/landing/bottomBar.dart';
import 'package:flutter_shorts/screens/splashScreen/onBoardingEntity.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _onBoardingData = OnBoardingEntity.onBoardingData;
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          _pageViewBuilderWidget(),
          _columnWidget(),
          // HeaderWidget(),
        ],
      ),
    );
  }

  Widget _pageViewBuilderWidget() {
    return PageView.builder(
      itemCount: _onBoardingData.length,
      onPageChanged: (index) {
        setState(() {
          _currentPageIndex = index;
        });
      },
      itemBuilder: (ctx, index) {
        return Stack(
          alignment: Alignment.topCenter,
          fit: StackFit.passthrough,
          children: [
            index == 3
                ? Container(
                    height: double.infinity,
                    child: Image.asset(
                      _onBoardingData[index].image,
                      fit: BoxFit.cover,
                    ),
                  )
                : Container(
                    margin: EdgeInsets.only(bottom: 60),
                    child: Image.asset(
                      _onBoardingData[index].image,
                    ),
                  ),
            index == 3
                ? Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(.5),
                            Colors.black.withOpacity(.1),
                            Colors.black.withOpacity(.9),
                          ],
                          tileMode: TileMode.clamp,
                          begin: Alignment(0.9, 0.0),
                          end: Alignment(0.8, 0.4)),
                    ),
                  )
                : Container(),
            index == 0
                ? Container(
                    alignment: Alignment.topLeft,
                    // color: Colors.amber,
                    margin: EdgeInsets.only(top: 70, left: 40, right: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: Image.asset('assets/images/logo.png'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          _onBoardingData[index].heading,
                          style: TextStyle(fontSize: 22),
                          // textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          _onBoardingData[index].description,
                          style: TextStyle(fontSize: 16),
                          // textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                : Column(
                    children: [
                      Container(
                        // color: Colors.amber,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 70, left: 40, right: 40),
                        // height: 70,
                        // width: 70,
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: 70,
                          width: 70,
                        ),
                      ),
                      Container(

                          // color: Colors.amber,

                          child: Container(
                        margin: EdgeInsets.only(top: 410, left: 65, right: 65),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _onBoardingData[index].heading,
                              style: TextStyle(fontSize: 22),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              _onBoardingData[index].description,
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )),
                    ],
                  )
          ],
        );
      },
    );
  }

  Widget _columnWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _onBoardingData.map(
                (data) {
                  //get index
                  int index = _onBoardingData.indexOf(data);
                  return Container(
                    height: 10,
                    width: 10,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: index == _currentPageIndex
                          ? Colors.blue
                          : Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => AvatarScreen(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 10, right: 15, left: 15),
              padding: EdgeInsets.symmetric(vertical: 12),
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                // color: Colors.red,
              ),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.pinkAccent,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
