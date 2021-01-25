import 'package:flutter/material.dart';
//import 'package:platzi_tripss_app/profile_review.dart';
import 'profile_header.dart';
import 'profile_review.dart';

class ProfilePlaces extends StatelessWidget{

@override
Widget build(BuildContext context) {
// TODO: implement build
return Container(
height: 650.0,
child: ListView(
padding: EdgeInsets.all(5.0),
children: [
ProfileHeader("Diane Ross", "traveldreamer@gmail.com", "assets/Diane.jpeg", "Profile"),
ProfileReview("assets/img/people.jpg", "Its a super cool place. I really enjoy going there on weekends", "Mountain heaven", "Steps: 234234"),
ProfileReview("assets/img/people.jpg", "Its a super cool place", "mount view", "Steps: 45764"),
ProfileReview("assets/img/people.jpg", "Pigs on the beach. You don´t see this in other place", "Pig bay", "Steps: 198789"),
ProfileReview("assets/img/people.jpg", "Cristal clear water and an incredible beach", "Blue diamond", "Steps: 234234"),
ProfileReview("assets/img/people.jpg", "Beautiful beaches and blue sea. What else you need to be happy?", "White sand beach", "Steps: 234234"),
ProfileReview("assets/img/people.jpg", "Tropical weather and the best coco locos I’ve ever tried", "Coco place", "Steps: 234234"),
],
),
);;
}

}