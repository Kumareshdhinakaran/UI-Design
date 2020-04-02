import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Hello Brian!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Today",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.2,
                ),
              ),
              IconButton(
                icon: Icon(Icons.edit),
                iconSize: 20.0,
                color: Colors.blueGrey,
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'Overall',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.9,
                ),
              ),
              IconButton(
                icon: Icon(Icons.expand_more),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
