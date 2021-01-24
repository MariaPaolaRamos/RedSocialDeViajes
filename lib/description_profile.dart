import 'package:flutter/material.dart';

class DescriptionProfile extends StatelessWidget{
  @override
  String name="Varuna Yasas";
  String pathImage='assets/img/people.jpg';

  String details ="1 Review 5 photos";
  String comment="There is an amazing place in Sri Lanka";
  DescriptionProfile(this.pathImage,this.name,this.details,this.comment);
  Widget build(BuildContext context) {
    // TODO: implement build
    final star_border=Container(

      child: Icon(
        Icons.star_border,
        color:Color(0xFFf2C611) ,
      ),
    );
    final star_half=Container(

      child: Icon(
        Icons.star_half,
        color:Color(0xFFf2C611) ,
      ),
    );
    final star = Container(

      child: Icon(
        Icons.star,
        color:Color(0xFFf2C611) ,
      ),
    );
    final userComment=Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(comment,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              fontWeight: FontWeight.w900
          )

      ),
    );
    final userInfo=Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(details,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              color: Color(0xFFa3a5a7)
          )

      ),
    );
    final userName=Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(name,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 17.0
          )

      ),
    );
    final userDetails=Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        userName,userInfo,userComment
      ],
    );
    final photo=Container(
       margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),
      width: 80,
      height: 80,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image:DecorationImage(
          fit:BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );
    final stars=Row(
      children: <Widget>[
        star,star,star,star_border,star_half
      ],

    );

    final detalle=Column(
      children: <Widget>[
        userName,userName
      ],
    );
  return Container(
    margin: EdgeInsets.only(
      top: 100.0,
      left:20.0,
      right: 20.0
    ),
       child: Row(
         children: <Widget>[
           photo,userName

         ],
       )
  ) ;

    /*return Row(
      children: <Widget>[
        photo,userComment,stars
      ],
    );
*/
  }

  }

