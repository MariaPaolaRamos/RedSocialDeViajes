import 'package:flutter/material.dart';
import 'review_list.dart';

import 'description_place.dart';
import 'headder_appbar.dart';
class HomeTrips extends StatelessWidget{
  String descriptionDummy="Este es un bonito lugar para salir a pasear con la familia blblblblblblblbllblblblbbbblbl"
      "blblblblblblblblblblblblblblblb"
      "bklblbkbkbkbbbbbbbbbbbbbbbbbbbbbbbbbb";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children:<Widget> [
        //Ponemos debajo del gradiente este stack para las listas, asi se va a ir deslizando
        ListView(
          children: <Widget>[
            DescriptionPlace("Bahamas",4,descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}
