import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
 class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

 }
 //clase con la coleccion de los elementos
 class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  @override
  bool _pressed=false;


  void onPressedFav(){
    setState(() {
      _pressed=!this._pressed;
    });
  }
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      //tipo de elemento , tamaño
      mini: true,
      //si alguien se posiciona en esa parte con el mouse
      tooltip: "Fav",
      //comportamiento del botono cuando lo apretemos
      onPressed:onPressedFav ,
      child: Icon(
        //Cambiamos al estado en que se pintara de color blanco el icono del corazoncito
        this._pressed ? Icons.favorite :
        Icons.favorite_border
      ),
    );
    // TODO: implement build

  }

 }