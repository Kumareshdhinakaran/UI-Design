import 'package:flutter/material.dart';

class Post extends StatelessWidget {
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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/feed1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage('images/avan.jpg'),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "Anna may",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.location_on),
                              iconSize: 15.0,
                              color: Colors.white,
                              onPressed: () {},
                            ),
                            Text(
                              "Iceland",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.image),
                        iconSize: 15.0,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
