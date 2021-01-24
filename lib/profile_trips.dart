import 'package:flutter/material.dart';
import 'package:prueba3/gradient_profile.dart';
import 'description_profile.dart';

class ProfileTrips extends StatelessWidget{
  String pathImage='assets/img/people.jpg';
  String descriptionDummy="Este es un bonito lugar para salir a pasear con la familia blblblblblblblbllblblblbbbblbl"
      "blblblblblblblblblblblblblblblb"
      "bklblbkbkbkbbbbbbbbbbbbbbbbbbbbbbbbbb";
  String name="Varuna Yasas";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        GradientProfile("Profile"),
        DescriptionProfile(pathImage,name,"prueba","cometanio"),
      ],
    );
      DescriptionProfile(pathImage,name,"prueba","cometanio");
     return Scaffold(
       //appBar: AppBar(title:Text("hola")),

       body: new DescriptionProfile(pathImage,"Maria","prueba","cometanio")
     );
  }

}