import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'circleImageAnimation.dart';

class OptionsScreen extends StatelessWidget {
  static const double ProfileImageSize = 50.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 110),
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.person, size: 18),
                        radius: 16,
                      ),
                      SizedBox(width: 6),
                      Text('@johndoe'),
                      SizedBox(width: 10),
                      Icon(Icons.verified, size: 15),
                      SizedBox(width: 6),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Follow',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 6),
                  Text('Watch my new videos 💙❤💛 ..'),
                  SizedBox(height: 10),
                  Text('#minilive #new #my...'),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.music_note,
                        size: 15,
                      ),
                      Text('Original Audio - some music track--'),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.favorite,
                    size: 30,
                  ),
                  Text(
                    '2.8M',
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(height: 20),
                  Icon(
                    Icons.comment_rounded,
                    size: 30,
                  ),
                  Text(
                    '10k',
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 40,
                  ),
                  // Transform(
                  //   transform: Matrix4.rotationZ(5.8),
                  //   child: Icon(
                  //     Icons.more_horiz,
                  //     size: 30,
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.visibility,
                        size: 14,
                      ),
                      Text(
                        '10k',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CircleImageAnimation(
                    child: _getMusicPlayerAction(
                        "https://www.andersonsobelcosmetic.com/wp-content/uploads/2018/09/chin-implant-vs-fillers-best-for-improving-profile-bellevue-washington-chin-surgery.jpg"),
                  ),
                  SizedBox(height: 20),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  static const double ActionWidgetSize = 60.0;

  LinearGradient get musicGradient => LinearGradient(colors: [
        Colors.grey[800],
        Colors.grey[900],
        Colors.grey[900],
        Colors.grey[800]
      ], stops: [
        0.0,
        0.4,
        0.6,
        1.0
      ], begin: Alignment.bottomLeft, end: Alignment.topRight);

  Widget _getMusicPlayerAction(userPic) {
    return Container(
        margin: EdgeInsets.only(top: 10.0),
        width: ActionWidgetSize,
        height: ActionWidgetSize,
        child: Column(children: [
          Container(
              padding: EdgeInsets.all(11.0),
              height: ProfileImageSize,
              width: ProfileImageSize,
              decoration: BoxDecoration(
                  gradient: musicGradient,
                  borderRadius: BorderRadius.circular(ProfileImageSize / 2)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10000.0),
                  child: CachedNetworkImage(
                    imageUrl: userPic,
                    placeholder: (context, url) =>
                        new CircularProgressIndicator(),
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                  ))),
        ]));
  }
}
