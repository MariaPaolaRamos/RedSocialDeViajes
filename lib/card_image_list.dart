import 'package:flutter/material.dart';
import 'card_image.dart';
class CardImageList extends StatelessWidget{
  String pathImage="assets/img/people.jpg";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        //se acomoda los elementos de manera horizontal
        scrollDirection: Axis.horizontal,
        children:<Widget> [
          CardImage(pathImage),
          CardImage(pathImage),
          CardImage(pathImage),
          CardImage(pathImage),
          CardImage(pathImage)
        ],
      ),
    );
  }

}