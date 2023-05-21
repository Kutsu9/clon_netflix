import 'package:clon_netflix/componentes/nav_bar_superior.dart';
import 'package:flutter/material.dart';

//cartel principal, donde esta la navbar, la imagen principal, y ..
class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabecera(),
        this.infoSerie(),
        this.botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.network(
          "https://occ-0-1701-2773.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABXzztZ3rOlBaD58qPXt-ge9fOs1Mk5khAqv1NuWTrM37WJOzXqB3oI9lO3Exdq7CIJCxB7GSO7bxICh6Fbxt67BQ6ccCvJt2H3v9.webp?r=8a0",
          height: 350,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.black12, Colors.black])),
        ),
        SafeArea(child: NavBarSuperior()),
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          "Suspenso",
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          "Series basadas en libros",
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          "Series dramáticas",
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: [
              Icon(Icons.check, color: Colors.white),
              SizedBox(
                height: 5.0,
              ),
              Text("Mi Lista",
                  style: TextStyle(color: Colors.white, fontSize: 10.0)),
            ],
          ),
          TextButton.icon(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            label: Text(
              "Reproducir",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Column(
            children: [
              Icon(Icons.info_outline, color: Colors.white),
              SizedBox(
                height: 5.0,
              ),
              Text("Información",
                  style: TextStyle(color: Colors.white, fontSize: 10.0)),
            ],
          ),
        ],
      ),
    );
  }
}
