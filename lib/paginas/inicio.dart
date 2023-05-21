import 'package:flutter/material.dart';
import 'package:clon_netflix/componentes/cartel_principal.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
        ],
      ),
      bottomNavigationBar: this.navInferior(),
    );
  }

  BottomNavigationBar navInferior() {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Buscar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.display_settings),
            label: "Proximamente",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_sharp),
            label: "Descargas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_open_rounded),
            label: "Más",
          ),
        ]);
  }
}
