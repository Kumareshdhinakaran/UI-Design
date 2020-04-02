import 'package:flutter/material.dart';
import 'package:sample/screens/profile_screen.dart';
import 'package:sample/widgets/home_page.dart';
import 'package:sample/widgets/welcome_bar.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          color: Colors.blueGrey,
          onPressed: () {},
        ),
        backgroundColor: Color(0xFFF8F8FF),
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 30.0, top: 12.0),
            child: IconButton(
              icon: CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage('images/avan.jpg'),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProfileScreen(),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 45.0, top: 20.0, right: 30.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 10.0,
              ),
              WelcomePage(),
              Expanded(
                child: HomePage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
