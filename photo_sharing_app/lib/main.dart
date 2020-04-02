import 'package:flutter/material.dart';
import 'package:sample/screens/feed_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My first App',
      theme: ThemeData.light(),
      home: FeedScreen(),
    );
  }
}
