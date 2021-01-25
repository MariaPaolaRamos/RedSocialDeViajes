import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'floating_action_button_green.dart';

class ProfileReview extends StatelessWidget{

  String pathImage = "assets/img/people.jpg";
  String placeName;
  String placeDescription;
  String placeSteps;

  ProfileReview(this.pathImage, this.placeDescription, this.placeName, this.placeSteps);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // Card que contiene la foto del lugar

    final card = Container(

      height: 200.0,
      width: 380.0,
      margin: EdgeInsets.only(
          top: 20.0,
          bottom: 40.0,
          right: 10.0,
          left: 10.0
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow (
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0)
            )
          ]
      ),
    );

    // Card que contiene la información del lugar

    final place = Container(
      height: 100.0,
      width: 300.0,
      margin: EdgeInsets.only(
        top: 20.0,
        bottom: 40.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow (
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0)
            )
          ]
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 10.0,
              left: 10.0,
            ),
            child: Text(placeName,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
              ),
            ),
          ),
          Container(
            width: 230,
            padding: EdgeInsets.only(
                top: 5.0,
                left: 10.0
            ),
            child: Text(placeDescription,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black38
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 5.0,
                left: 10.0
            ),
            child: Text(placeSteps,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.deepOrange
              ),
            ),
          )

        ],
      ),
    );

    final cardPlace = Stack(
      alignment: Alignment(0,1.5),
      children: [
        card,
        place
      ],
    );

    return Stack(
      alignment: Alignment(0.6,0.9),
      children: [
        cardPlace,
        FloatingActionButtonGreen()
      ],
    );



  }

}
