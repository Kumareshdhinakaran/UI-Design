import 'package:flutter/material.dart';
import 'package:sample/widgets/Contest_details.dart';
import 'package:sample/widgets/Post.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }

  Widget _myListView(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 50,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        if ((index % 2) == 0) {
          return Post();
        } else {
          return ContestDetails();
        }
      },
      separatorBuilder: (context, index) => Divider(),
    );
  }
}
