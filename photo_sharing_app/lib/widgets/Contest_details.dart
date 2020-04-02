import 'package:flutter/material.dart';

class ContestDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(40),
          onTap: () {},
          child: Container(
            width: 300,
            height: 150,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.notifications),
                      iconSize: 15.0,
                      color: Colors.blueGrey,
                      onPressed: () {},
                    ),
                    Text(
                      "Contest:",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.0,
                      ),
                    ),
                    Text(
                      "'Disconnected'",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 58.0),
                      child: Text(
                        "1h",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200.0,
                      child: Text(
                        "Disconnected is international contest sponsored by unsplash.Price pool over 100k",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage('images/avan.jpg'),
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage('images/feed.jpg'),
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: CircleAvatar(
                          radius: 20.0,
                          child: Text(
                            '+50',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.0,
                            ),
                          ),
                          backgroundColor: Colors.grey[300],
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
