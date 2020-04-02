import 'package:flutter/material.dart';
import 'package:sample/screens/feed_screen.dart';
import 'package:sample/widgets/Profile_details.dart';
import 'package:sample/widgets/home_page.dart';

class ProfileScreen extends StatelessWidget {
  final controller = PageController(
    initialPage: 1,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile",
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.black,
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => FeedScreen(),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.message),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  ],
                ),
                ProfileDetails(),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 55.0,
                    top: 35.0,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Activity",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0,
                        ),
                      ),
                      IconButton(
                        icon: CircleAvatar(
                          radius: 10.0,
                          child: Text(
                            '+2',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 7.0,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.0,
                            ),
                          ),
                          backgroundColor: Colors.grey[300],
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: PageView(
                    controller: controller,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("Page 1"),
                          Divider(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              'https://cdn.pixabay.com/photo/2015/06/19/21/24/the-road-815297__340.jpg',
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text("Page 2"),
                          Divider(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS0RPzTrVfJ4vgMPcW1h4JwVDcyCzNKTyhMFBmqcHbIgF-3hz30',
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text("Page 3"),
                          Divider(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              'https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.all(28.0),
                //     child: Column(
                //       children: <Widget>[
                //         Expanded(
                //           child: HomePage(),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
