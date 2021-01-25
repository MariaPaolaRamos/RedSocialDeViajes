import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget{

String usName= "Usuario";
String usMail="mail@user.com";
String photoPath="assets/img/people.jpg";
String title="Profile";

ProfileHeader(this.usName, this.usMail, this.photoPath, this.title);

@override
Widget build(BuildContext context) {
// TODO: implement build

final userName = Container(
margin: EdgeInsets.only(
left:20.0,
),
child: Text(
usName,
textAlign: TextAlign.left,
style: TextStyle(
color: Colors.white,
fontFamily:"Lato",
fontSize:20.0,
fontWeight: FontWeight.w900
),
),
);

final userMail = Container(
margin: EdgeInsets.only(
left:20.0,
),
child: Text(
usMail,
textAlign: TextAlign.left,
style: TextStyle(
color: Colors.white54,
fontFamily:"Lato",
fontSize:13.0,
fontWeight: FontWeight.w900
),
),
);

final userData= Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
userName,
userMail
],
);

final userPhoto = Container(
margin: EdgeInsets.only(
top:20.0,
left:20.0,
),
width:80.0,
height:80.0,
decoration: BoxDecoration(
shape: BoxShape.circle,
image: DecorationImage(
fit: BoxFit.cover,
image: AssetImage(photoPath),
)
),
);


return Container(

child: Column(
children: [
//Row que contiene profile e icono de settings
Row(
children: [
Container(
padding:EdgeInsets.only(
top:20.0,
left:20.0,
),
width:320,
alignment: Alignment.bottomLeft,
child: Text(
title,
style: TextStyle(
color: Colors.white,
fontSize:30.0,
fontFamily:"Lato",
fontWeight: FontWeight.bold
),
),
),
Container(
alignment: Alignment.bottomRight,
padding: EdgeInsets.only(
top:20.0,
),
child: Icon(
Icons.settings,
color: Colors.white
),
)
],
),

//Row que contiene foto de perfil, nombre y correo del usuario
Row(
children: [
userPhoto,
userData
],
),

//Row que contiene 5 iconos
Row(
mainAxisAlignment: MainAxisAlignment.start,

children: [
Container(

width:50,
height:40,
margin: EdgeInsets.only(
left:20.0,
top:20.0,
),
decoration: BoxDecoration(
shape: BoxShape.circle,
color: Colors.white
),

child: Icon(
Icons.bookmark_border,
color: Colors.indigo,
),
),
Container(
width:50,
height:40,
margin: EdgeInsets.only(
left:20.0,
top:20.0,
),
decoration: BoxDecoration(
shape: BoxShape.circle,
color: Colors.white
),

child: Icon(
Icons.card_giftcard,
color: Colors.indigo,
),
),

Container(
width:70,
height:70,
margin: EdgeInsets.only(
left:20.0,
top:20.0,
),
decoration: BoxDecoration(
shape: BoxShape.circle,
color: Colors.white
),

child: Icon(
Icons.add,
color: Colors.indigo,
),
),

Container(
width:50,
height:40,
margin: EdgeInsets.only(
left:20.0,
top:20.0,
),
decoration: BoxDecoration(
shape: BoxShape.circle,
color: Colors.white
),

child: Icon(
Icons.mail,
color: Colors.indigo,
),
),

Container(
width:50,
height:40,
margin: EdgeInsets.only(
left:20.0,
top:20.0,
),
decoration: BoxDecoration(
shape: BoxShape.circle,
color: Colors.white
),

child: Icon(
Icons.person,
color: Colors.indigo,
),
)
],
)
],
),

);
}

}

