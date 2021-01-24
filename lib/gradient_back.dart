import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{
  String title="Popular";
  @override
  GradientBack(this.title);

  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          //maneja colores en plural asi que trabajamos en un array
            colors: [
              Color(0xFF4268D3),//COLOR CLARO
              Color(0xFF584CD1)//COLOR OSCURO
            ],
          //definimoa la orinetacion de gradiente
          begin:FractionalOffset(0.2,0.0),
          end: FractionalOffset(1.0,0.6),
            //orientacion de gradiente de arriba a abajo o viceversa
            stops: [0.0,0.6],
            //color de relleno , mientras pasa algo con nuestro gradiente
            tileMode: TileMode.clamp

        )
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold

        ),
      ),
      //alineacion del texto respecto al contenedor, para no verlo muy arriba
      alignment: Alignment(-0.9,-0.6),
    );
    return null;
  }

}