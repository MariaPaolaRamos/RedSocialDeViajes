import 'package:flutter/material.dart';
import 'package:prueba3/gradient_profile.dart';
import 'card_image_list.dart';
import 'gradient_back.dart';
class HeaderProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //acomodamos un elemento sobre otro
    return Stack(
      children:<Widget> [
        GradientProfile("Profile"),
        //CardImageList(),

      ],
    );
  }

}

