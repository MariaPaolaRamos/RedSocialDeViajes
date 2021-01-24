
import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';
class CardProfile extends StatelessWidget{

  @override
  String pathImage="assets/img/people.jpg";
  CardProfile(this.pathImage);
  Widget build(BuildContext context) {
    // TODO: implement build
    final card=Container(
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(
          top: 80.0,
          left: 20.0
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            //se ajustara la imagen
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              //color de la sombra
                color: Colors.black38,
                //degradado
                blurRadius: 15.0,
                //posicion de la sombra en x y y
                offset: Offset(0.0,7.0)
            )
          ]
      ),
    );
    return Stack(
      alignment: Alignment(0.9,1.1),
      children:<Widget> [
        card,
        FloatingActionButtonGreen()

      ],
    );
  }

}