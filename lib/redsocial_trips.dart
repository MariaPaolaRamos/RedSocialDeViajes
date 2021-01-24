import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'gradient_back.dart';
import 'headder_appbar.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';
class RedSocialTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RedSocialTrips();
  }
}
  class _RedSocialTrips extends State<RedSocialTrips>{
  @override
  //En forma de arreglo pondremos la cantidad de vista que queremos ir  mostrando , estaran disponibles
  //Cuando alguien le de Tap simplemente lo llame
  int indexTap =0;
final List<Widget> widgetsChildren=[
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index){
    //Controlamos toda la funcionalidad de StatefullWidgets, osea el estado
      setState(() {
        //le pasamos el indice para que lo detecte
        //nos mostrara al menu
        indexTap=index;
      });
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    //Haremos un indice desde cero hasta donde queremos
    //en ese indice estaran los iconos

    return Scaffold(
      body: widgetsChildren[indexTap],
    bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child:BottomNavigationBar(
          //lo que va a suceder cuando le demos tap
          onTap:onTapTapped ,

          //con el currentIndex estamos diciendo que el indice que quiero que se ponga alli
          //que el index Tap este en ese momento
          currentIndex:indexTap ,
            items:[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title:Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title:Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title:Text("")
              ),
            ]
        ),

    ),
    );
  }

  }
