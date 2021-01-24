import 'package:flutter/material.dart';
import 'review.dart';
class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
                Review("assets/img/people.jpg", "Maria", "1 Review 5 photos","jajajajaja"),
                Review("assets/img/people.jpg", "Maria", "1 Review 5 photos","jajajajaj"),
                Review("assets/img/people.jpg", "Maria", "1 Review 5 photos","jajajajaj"),
        ],
      );

  }

}
